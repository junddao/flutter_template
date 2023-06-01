// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_announcements_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsAnnouncementsResponse _$UtmUmsAnnouncementsResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsAnnouncementsResponse(
      announcements: (json['announcements'] as List<dynamic>)
          .map((e) =>
              UtmUmsAnnouncementResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      countOfTotal: json['countOfTotal'] as int,
    );

Map<String, dynamic> _$UtmUmsAnnouncementsResponseToJson(
        UtmUmsAnnouncementsResponse instance) =>
    <String, dynamic>{
      'announcements': instance.announcements,
      'countOfTotal': instance.countOfTotal,
    };
