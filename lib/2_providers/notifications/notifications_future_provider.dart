import 'package:smatii/index.dart';

/// 경고 알림 목록 조회
final notificationsFutureProvider = FutureProvider.autoDispose.family<DataResponse<UtmUmsNotificationsResponse>, UtmUmsNotificationsRequest>(
  (ref, request) {
    return ref.watch(notificationRepositoryProvider).searchNotifications(request);
  },
  name: 'notificationsFutureProvider',
);
