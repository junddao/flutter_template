import 'package:smatii/index.dart';

final umsWeatherRepositoryProvider = Provider<UmsWeatherRepository>((ref) {
  return UmsWeatherRepository(ref);
});

class UmsWeatherRepository {
  final Ref ref;

  UmsWeatherRepository(this.ref);

  /// 기상 정보 조회
  Future<DataResponse<UtmUmsWeatherResponse>> searchWeather(UtmUmsWeatherRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getWeather(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 초단기실황 조회
  Future<DataResponse<UtmUmsUltraShortTermLiveConditionResponse>> searchWeatherLive(
      UtmUmsWeatherLiveRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getWeatherLive(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 초단기 예보 조회
  Future<DataResponse<UtmUmsUltraShortTermForecastsResponse>> searchWeatherUltraShortTermForecasts(
      UtmUmsWeatherUltraShortTermForecastsRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getWeatherUltraShortTermForecasts(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 지구자기장 지수 관측 데이터 조회
  Future<DataResponse<UtmUmsKindexResponse>> searchWeatherKindex() async {
    try {
      var result = await ref.watch(restApiProvider).getWeatherKindex();
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 지구자기장 관측 데이터 조회
  Future<DataResponse<UtmUmsMagnetismResponse>> searchWeatherMagnetism() async {
    try {
      var result = await ref.watch(restApiProvider).getWeatherMagnetism();
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 일출 일몰 정보
  Future<DataResponse<UtmUmsSolarEventResponse>> searchWeatherSolarEvent(UtmUmsSolarEventRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getWeatherSolarEvent(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }
}
