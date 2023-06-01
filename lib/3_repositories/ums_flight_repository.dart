
import 'package:smatii/index.dart';

final umsFlightRepositoryProvider = Provider<UmsFlightRepository>((ref) {
  return UmsFlightRepository(ref);
});


class UmsFlightRepository {

  final Ref ref;

  UmsFlightRepository(this.ref);

  /// 비행 정보 조회
  Future<DataResponse<UtmUmsFlightResponse>> searchFlight(String approvalNumber) async {
    try {
      var result = await ref.watch(restApiProvider).getFlight(approvalNumber);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

}