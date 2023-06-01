
import 'package:smatii/index.dart';


final umsUimRepositoryProvider = Provider<UmsUimRepository>((ref) {
  return UmsUimRepository(ref);
});


class UmsUimRepository {

  final Ref ref;

  UmsUimRepository(this.ref);

  /// UIM 등록
  Future<DataResponse<UtmUmsUimResponse>> addUim(UtmUmsCreateUimRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).postUim(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// UIM 조회
  Future<DataResponse<UtmUmsUimResponse>> searchUim(String uimId) async {
    try {
      var result = await ref.watch(restApiProvider).getUim(uimId);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// UIM 목록 조회
  Future<DataResponse<UtmUmsUimsResponse>> searchUims(UtmUmsUimsRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getUims(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// UIM 목록 수 조회
  Future<DataResponse<UtmUmsUimsCountResponse>> searchUimsCount() async {
    try {
      var result = await ref.watch(restApiProvider).getUimsCount();
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// UIM 취소 설정
  Future<DataResponse<SuccessResponse>> updateUimCanceled(String uimId) async {
    try {
      var result = await ref.watch(restApiProvider).patchUimCanceled(uimId);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// UIM 완료 설정
  Future<DataResponse<SuccessResponse>> updateUimFinished((String, UtmUmsFinishUimRequest) recordRequest) async {
    try {
      String uimId = recordRequest.$1;
      UtmUmsFinishUimRequest request = recordRequest.$2;
      var result = await ref.watch(restApiProvider).patchUimFinished(uimId: uimId, request: request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// UIM 발급 기간 연장 신청
  Future<DataResponse<UtmUmsExtendUimPeriodRequest>> updateIssuancePeriodTo((String, UtmUmsExtendUimPeriodRequest) recordRequest) async {
    try {
      String uimId = recordRequest.$1;
      UtmUmsExtendUimPeriodRequest request = recordRequest.$2;
      var result = await ref.watch(restApiProvider).patchUimIssuancePeriodTo(uimId: uimId, request: request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

}