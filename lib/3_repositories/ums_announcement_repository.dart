import 'package:smatii/index.dart';

final umsAnnouncementsRepositoryProvider = Provider<UmsAnnouncementsRepository>((ref) {
  return UmsAnnouncementsRepository(ref);
});

class UmsAnnouncementsRepository {
  final Ref ref;

  UmsAnnouncementsRepository(this.ref);

  /// 공지사항 목록 조회
  Future<DataResponse<UtmUmsAnnouncementsResponse>> searchAnnouncements(UtmUmsAnnouncementsRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getAnnouncements(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 공지사항 상세 조회
  Future<DataResponse<UtmUmsAnnouncementResponse>> searchAnnouncement(String id) async {
    try {
      var result = await ref.watch(restApiProvider).getAnnouncement(id: id);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

}
