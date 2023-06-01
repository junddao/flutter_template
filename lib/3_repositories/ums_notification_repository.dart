import 'package:smatii/index.dart';

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  return NotificationRepository(ref);
});

class NotificationRepository {
  final Ref ref;

  NotificationRepository(this.ref);

  /// 알림 목록 조회
  Future<DataResponse<UtmUmsNotificationsResponse>> searchNotifications(UtmUmsNotificationsRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getNotifications(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 알림 수 조회
  Future<DataResponse<UtmUmsNotificationsCountResponse>> searchNotificationsCount(bool isRead) async {
    try {
      var result = await ref.watch(restApiProvider).getNotificationsCount(isRead);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }

  /// 알림 읽음 상태로 설정
  Future<DataResponse<SuccessResponse>> updateNotificationsRead(String lastNotificationId) async {
    try {
      var result = await ref.watch(restApiProvider).patchNotificationsRead(lastNotificationId);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }
}
