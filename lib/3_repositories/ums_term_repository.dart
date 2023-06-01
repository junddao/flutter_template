import 'package:smatii/index.dart';

final umsTermRepositoryProvider = Provider<UmsTermRepository>((ref) {
  return UmsTermRepository(ref);
});

class UmsTermRepository {
  final Ref ref;

  UmsTermRepository(this.ref);

  /// 약관 목록 조회
  Future<DataResponse<UtmUmsTermsTitlesResponse>> searchTermsTitles(UtmUmsTermsTitlesRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getTermsTitles(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 약관 상세 조회
  Future<DataResponse<UtmUmsTermResponse>> searchTerm(String id) async {
    try {
      var result = await ref.watch(restApiProvider).getTerm(id: id);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

}
