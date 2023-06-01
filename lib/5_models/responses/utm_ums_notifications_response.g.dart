// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_notifications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsNotificationsResponse _$UtmUmsNotificationsResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsNotificationsResponse(
      notifications: (json['notifications'] as List<dynamic>)
          .map((e) =>
              UtmUmsNotificationPayload.fromJson(e as Map<String, dynamic>))
          .toList(),
      countOfTotal: json['countOfTotal'] as num,
    );

Map<String, dynamic> _$UtmUmsNotificationsResponseToJson(
        UtmUmsNotificationsResponse instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'countOfTotal': instance.countOfTotal,
    };
