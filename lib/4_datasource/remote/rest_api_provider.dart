import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:smatii/index.dart';

final restApiProvider = Provider<RestClient>(
  (ref) {
    // dio 정의
    final dio = Dio();
    // token dio 정의
    final tokenDio = Dio();

    // 토큰
    final accessToken = ref.watch(umsUserRepositoryProvider).getAccessToken();
    // 리프레시 토큰
    final refreshToken = ref.read(umsUserRepositoryProvider).getRefreshToken();

    // dio 설정
    dio.options.baseUrl = endPoint;
    dio.options.headers["Authorization"] = accessToken;
    dio.options.connectTimeout = const Duration(seconds: 3);
    dio.options.receiveTimeout = const Duration(seconds: 5);

    // token dio 설정
    tokenDio.options = dio.options;
    tokenDio.interceptors.add(LogInterceptor());
    final tokenClient = RestClient(tokenDio);

    // dio interceptor 추가
    dio.interceptors.add(
      // onRequest -> 성공 -> onResponse
      //                  -> 실패 -> onError -> 토큰 재발급 -> 다시 시작 -> onRequest -> 성공 -> onResponse -> .g serialize -> model return
      QueuedInterceptorsWrapper(
        // Request가 보내기 전에 실행됩니다.
        // 예를 들어, 헤더를 설정하거나 요청을 변환할 수 있습니다.
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          return handler.next(options);
        },
        // Response를 받은 후에 실행됩니다.
        // 예를 들어, 상태 코드에 따라 오류 처리를 할 수 있습니다.
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          if (response.data!['success']) {
            return handler.next(response);
          } else {
            final newError = DioError(
              requestOptions: response.requestOptions,
              response: response,
              message: response.data!['message'], //표시할 메시지
              error: response.data!['code'], // 사용자 정의 오류 메시지
            );
            // interceptor onError로 전달
            return handler.reject(newError, true);
          }
        },
        // Error가 발생했을 때 실행됩니다.
        // 예를 들어, 네트워크 오류 처리를 할 수 있습니다.
        onError: (DioError err, handler) async {
          int statusCode = NetworkStatusCode.getNetworkStatusCode(err);
          if (statusCode == 401 && refreshToken != null) {
            // 토큰 재발급
            var request = UtmUmsRefreshUserSignRequest(refreshToken: refreshToken);
            var result = await tokenClient.patchUserSignRefresh(request);

            if (result.isSuccess) {
              // 헤더에 토큰 주입
              err.requestOptions.headers['Authorization'] = result.data!.accessToken;

              // 토큰 저장
              ref.read(umsUserRepositoryProvider.notifier).setAccessToken(result.data!.accessToken);
              ref.read(umsUserRepositoryProvider.notifier).setRefreshToken(result.data!.refreshToken);

              // api 재호출
              return handler.resolve(await dio.fetch(err.requestOptions));
            } else {
              // throw 전달
              return handler.next(err);
            }
          }
          // throw 전달
          return handler.next(err);
        },
      ),
    );

    if (kDebugMode) {
      // dio 로그 추가
      dio.interceptors.add(PrettyDioLogger());
    }

    final client = RestClient(dio);
    return client;
  },
);
