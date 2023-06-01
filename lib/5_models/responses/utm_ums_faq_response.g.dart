// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_faq_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsFaqResponse _$UtmUmsFaqResponseFromJson(Map<String, dynamic> json) =>
    UtmUmsFaqResponse(
      id: json['id'] as String,
      question: json['question'] as String,
      answer: json['answer'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$UtmUmsFaqResponseToJson(UtmUmsFaqResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
