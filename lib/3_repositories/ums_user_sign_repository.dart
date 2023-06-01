import 'package:smatii/index.dart';

final umsUserSignRepositoryProvider = Provider<UmsUserSignRepository>((ref) {
  return UmsUserSignRepository(ref);
});

class UmsUserSignRepository {
  final Ref ref;

  UmsUserSignRepository(this.ref);

  /// 사용자 로그인
  Future<DataResponse<UtmUmsUserSignInResponse>> signIn(UtmUmsUserSignInRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).postUserSignIn(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 사용자 가입
  Future<DataResponse<UtmUmsUserSignInResponse>> signUp(UtmUmsUserSignUpRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).postUserSignUp(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 사용자 인증 정보 갱신
  Future<DataResponse<UtmUmsUserSignInResponse>> signRefresh(UtmUmsRefreshUserSignRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).patchUserSignRefresh(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 사용자 인증 정보 갱신
  Future<DataResponse<SuccessResponse>> signOut() async {
    try {
      var result = await ref.watch(restApiProvider).postUserSignOut();
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }
}