// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_announcement_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsAnnouncementResponse _$UtmUmsAnnouncementResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsAnnouncementResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      html: json['html'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$UtmUmsAnnouncementResponseToJson(
        UtmUmsAnnouncementResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'html': instance.html,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
