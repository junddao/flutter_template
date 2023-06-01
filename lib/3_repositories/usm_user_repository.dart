
import 'package:smatii/index.dart';

final umsUserRepositoryProvider = ChangeNotifierProvider<UmsUserRepository>((ref) {
  return UmsUserRepository(ref);
});


class UmsUserRepository extends ChangeNotifier{

  final Ref ref;

  UmsUserRepository(this.ref);

  /// 최초 실행 여부 불러오기
  bool getIsFirstStart() {
    var isFirstStart = ref.read(sharedPreferencesProvider).getBool(SharedPreferencesKey.isFirstStart.name) ?? true;
    return isFirstStart;
  }

  /// 최초 실행 여부 저장하기
  void setIsFirstStart() {
    ref.read(sharedPreferencesProvider).setBool(SharedPreferencesKey.isFirstStart.name, false);
  }

  /// 토큰정보 불러오기
  String? getAccessToken() {
    var accessToken = ref.read(sharedPreferencesProvider).getString(SharedPreferencesKey.accessToken.name);
    return accessToken;
  }

  /// 토큰정보 저장
  void setAccessToken(String token) {
    ref.read(sharedPreferencesProvider).setString(SharedPreferencesKey.accessToken.name, token);
    notifyListeners();
  }

  /// 리프레시 토큰정보 불러오기
  String? getRefreshToken() {
    var refreshToken = ref.read(sharedPreferencesProvider).getString(SharedPreferencesKey.refreshToken.name);
    return refreshToken;
  }

  /// 리프레시 토큰정보 저장
  void setRefreshToken(String token) {
    ref.read(sharedPreferencesProvider).setString(SharedPreferencesKey.refreshToken.name, token);
  }

  /// 나의 정보 조회
  Future<DataResponse<UtmUmsMyUserResponse>> searchMe() async {
    try {
      var result = await ref.watch(restApiProvider).getUserMe();
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 나의 정보 삭제
  Future<DataResponse<SuccessResponse>> deleteMe() async {
    try {
      var result = await ref.watch(restApiProvider).deleteUserMe();
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 나의 이메일 수정
  Future<DataResponse<SuccessResponse>> updateMeEmail(UtmUmsUpdateMyUserEmailRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).patchUserMeEmail(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 나의 휴대번호 수정
  Future<DataResponse<SuccessResponse>> updateMePhone(UtmUmsUpdateMyUserPhoneRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).patchUserMePhone(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 나의 비밀번호 수정
  Future<DataResponse<SuccessResponse>> updateMePassword(UtmUmsUpdateMyUserPasswordRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).patchUserMePassword(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 이메일로 비밀번호 재설정
  Future<DataResponse<SuccessResponse>> updatePasswordByEmail(UtmUmsResetUserPasswordByEmailRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).patchUserPasswordByEmail(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 전화번호로 비밀번호 재설정
  Future<DataResponse<SuccessResponse>> updatePasswordByPhone(UtmUmsResetUserPasswordByPhoneRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).patchUserPasswordByPhone(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

}