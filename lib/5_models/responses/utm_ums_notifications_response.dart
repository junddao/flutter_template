import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/5_models/payload/utm_ums_notification_payload.dart';

part 'utm_ums_notifications_response.g.dart';

@JsonSerializable()
class UtmUmsNotificationsResponse {
  final List<UtmUmsNotificationPayload> notifications;
  final num countOfTotal;
  
  UtmUmsNotificationsResponse({
    required this.notifications,
    required this.countOfTotal,
  });

  factory UtmUmsNotificationsResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsNotificationsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsNotificationsResponseToJson(this);
}