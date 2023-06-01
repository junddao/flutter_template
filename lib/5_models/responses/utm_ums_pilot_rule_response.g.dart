// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_pilot_rule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsPilotRuleResponse _$UtmUmsPilotRuleResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsPilotRuleResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String,
      sequence: json['sequence'] as num,
      updatedAt: json['updatedAt'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$UtmUmsPilotRuleResponseToJson(
        UtmUmsPilotRuleResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'sequence': instance.sequence,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
    };
