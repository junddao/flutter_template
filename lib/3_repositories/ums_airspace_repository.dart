
import 'package:smatii/index.dart';

final umsAirspaceRepositoryProvider = Provider<UmsAirspaceRepository>((ref) {
  return UmsAirspaceRepository(ref);
});


class UmsAirspaceRepository {

  final Ref ref;

  UmsAirspaceRepository(this.ref);

  /// 기상 정보 조회
  Future<DataResponse<UtmUmsAirspacesResponse>> searchAirspace(UtmUmsAirspacesRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getAirspaces(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }
}