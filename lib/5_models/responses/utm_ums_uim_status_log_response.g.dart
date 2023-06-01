// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_uim_status_log_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUimStatusLogResponse _$UtmUmsUimStatusLogResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsUimStatusLogResponse(
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$UtmUmsUimStatusLogResponseToJson(
        UtmUmsUimStatusLogResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'createdAt': instance.createdAt,
    };
