// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_term_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsTermResponse _$UtmUmsTermResponseFromJson(Map<String, dynamic> json) =>
    UtmUmsTermResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$UtmUmsTermResponseToJson(UtmUmsTermResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
