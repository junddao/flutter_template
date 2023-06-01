import 'package:smatii/index.dart';

/// 공지사항 목록 조회
final noticeFutureProvider = FutureProvider.autoDispose.family<DataResponse<UtmUmsAnnouncementsResponse>, UtmUmsAnnouncementsRequest>(
  (ref, request) {
    return ref.watch(umsAnnouncementsRepositoryProvider).searchAnnouncements(request);
  },
  name: 'noticeFutureProvider',
);
