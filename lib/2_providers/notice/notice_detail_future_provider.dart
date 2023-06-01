import 'package:smatii/index.dart';

/// 공지사항 상세 조회
final noticeDetailFutureProvider = FutureProvider.autoDispose.family<DataResponse<UtmUmsAnnouncementResponse>, String>(
  (ref, id) {
    return ref.watch(umsAnnouncementsRepositoryProvider).searchAnnouncement(id);
  },
  name: 'noticeDetailFutureProvider',
);
