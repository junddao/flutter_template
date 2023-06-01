// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_notification_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsNotificationPayload _$UtmUmsNotificationPayloadFromJson(
        Map<String, dynamic> json) =>
    UtmUmsNotificationPayload(
      id: json['id'] as String,
      userId: json['userId'] as String,
      sortieId: json['sortieId'] as String,
      uimId: json['uimId'] as String,
      deviceOwnerId: json['deviceOwnerId'] as String,
      deviceId: json['deviceId'] as String,
      pilotId: json['pilotId'] as String,
      violationCode:
          $enumDecodeNullable(_$ViolationTypeEnumMap, json['violationCode']),
      message: json['message'] as String,
      isRead: json['isRead'] as bool?,
      readAt: json['readAt'] as String?,
      updatedAt: json['updatedAt'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$UtmUmsNotificationPayloadToJson(
        UtmUmsNotificationPayload instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'sortieId': instance.sortieId,
      'uimId': instance.uimId,
      'deviceOwnerId': instance.deviceOwnerId,
      'deviceId': instance.deviceId,
      'pilotId': instance.pilotId,
      'violationCode': _$ViolationTypeEnumMap[instance.violationCode],
      'message': instance.message,
      'isRead': instance.isRead,
      'readAt': instance.readAt,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
    };

const _$ViolationTypeEnumMap = {
  ViolationType.ENTERED_NO_FLY_ZONE: 'ENTERED_NO_FLY_ZONE',
  ViolationType.OUT_OF_FLIGHT_AREA: 'OUT_OF_FLIGHT_AREA',
  ViolationType.OUT_OF_FLIGHT_ALTITUDE_LIMITS: 'OUT_OF_FLIGHT_ALTITUDE_LIMITS',
  ViolationType.UNAPPROVED_FLIGHT_PERIOD: 'UNAPPROVED_FLIGHT_PERIOD',
  ViolationType.NO_UIM_USAGE_PERIOD: 'NO_UIM_USAGE_PERIOD',
};
