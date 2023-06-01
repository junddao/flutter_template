import 'package:smatii/index.dart';

final umsFaqsRepositoryProvider = Provider<UmsFaqsRepository>((ref) {
  return UmsFaqsRepository(ref);
});

class UmsFaqsRepository {
  final Ref ref;

  UmsFaqsRepository(this.ref);

  /// 비행 정보 조회
  Future<DataResponse<UtmUmsFaqsResponse>> searchFaqs(UtmUmsFaqsRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getFaqs(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }
}
