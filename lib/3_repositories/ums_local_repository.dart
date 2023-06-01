
import 'package:smatii/index.dart';

final umsLocalRepositoryProvider = Provider<UmsLocalRepository>((ref) {
  return UmsLocalRepository(ref);
});


class UmsLocalRepository {

  final Ref ref;

  UmsLocalRepository(this.ref);

  /// 위치 조회
  Future<DataResponse<UtmUmsLocalResponse>> searchLocal(UtmUmsLocalRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getLocal(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 위치 목록 조회
  Future<DataResponse<UtmUmsLocalsResponse>> searchLocals(UtmUmsLocalsRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getLocals(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }
}