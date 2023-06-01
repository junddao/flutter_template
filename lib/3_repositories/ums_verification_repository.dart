
import 'package:smatii/index.dart';

final umsVerificationRepositoryProvider = Provider<UmsVerificationRepository>((ref) {
  return UmsVerificationRepository(ref);
});


class UmsVerificationRepository {

  final Ref ref;

  UmsVerificationRepository(this.ref);

  /// 사용자 이메일 인증 이메일 발송
  Future<DataResponse<SuccessResponse>> verificationEmail(UtmUmsSendVerificationEmailRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).postVerificationEmail(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 사용자 이메일 인증 이메일 확인
  Future<DataResponse<UtmUmsVerifyVerificationEmailResponse>> verificationEmailVerified(UtmUmsVerifyVerificationEmailRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).patchVerificationEmailVerified(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 사용자 휴대 전화 번호 인증 SNS 발송
  Future<DataResponse<SuccessResponse>> verificationPhone(UtmUmsSendVerificationPhoneRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).postVerificationPhone(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 사용자 휴대 전화 번호 인증 SMS 확인
  Future<DataResponse<UtmUmsVerifyVerificationPhoneResponse>> verificationPhoneVerified(UtmUmsVerifyVerificationPhoneRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).patchVerificationPhoneVerified(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

}
