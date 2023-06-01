import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/utils/enums.dart';

part 'utm_ums_notification_payload.g.dart';

@JsonSerializable()
class UtmUmsNotificationPayload {
  final String id;
  final String userId;
  final String sortieId;
  final String uimId;
  final String deviceOwnerId;
  final String deviceId;
  final String pilotId;
  final ViolationType? violationCode;
  final String message;
  final bool? isRead;
  final String? readAt;
  final String updatedAt;
  final String createdAt;
  
  UtmUmsNotificationPayload({
    required this.id,
    required this.userId,
    required this.sortieId,
    required this.uimId,
    required this.deviceOwnerId,
    required this.deviceId,
    required this.pilotId,
    this.violationCode,
    required this.message,
    this.isRead,
    this.readAt,
    required this.updatedAt,
    required this.createdAt,
  });

  factory UtmUmsNotificationPayload.fromJson(Map<String, dynamic> json) => _$UtmUmsNotificationPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsNotificationPayloadToJson(this);
}
