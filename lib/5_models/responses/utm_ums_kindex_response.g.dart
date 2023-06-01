// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_kindex_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsKindexResponse _$UtmUmsKindexResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsKindexResponse(
      currentP: json['currentP'] as num,
      currentK: json['currentK'] as num,
      max24P: json['max24P'] as num,
      max24K: json['max24K'] as num,
      recent: (json['recent'] as List<dynamic>)
          .map((e) =>
              UtmUmsRecentKindexPayload.fromJson(e as Map<String, dynamic>))
          .toList(),
      magnetism: UtmUmsMagnetismResponse.fromJson(
          json['magnetism'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$UtmUmsKindexResponseToJson(
        UtmUmsKindexResponse instance) =>
    <String, dynamic>{
      'currentP': instance.currentP,
      'currentK': instance.currentK,
      'max24P': instance.max24P,
      'max24K': instance.max24K,
      'recent': instance.recent,
      'magnetism': instance.magnetism,
      'updatedAt': instance.updatedAt,
    };
