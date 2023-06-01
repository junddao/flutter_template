// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_magnetism_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsMagnetismResponse _$UtmUmsMagnetismResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsMagnetismResponse(
      rawHXnT: json['rawHXnT'] as num,
      rawHYnT: json['rawHYnT'] as num,
      rawHZnT: json['rawHZnT'] as num,
      rawFnT: json['rawFnT'] as num,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$UtmUmsMagnetismResponseToJson(
        UtmUmsMagnetismResponse instance) =>
    <String, dynamic>{
      'rawHXnT': instance.rawHXnT,
      'rawHYnT': instance.rawHYnT,
      'rawHZnT': instance.rawHZnT,
      'rawFnT': instance.rawFnT,
      'updatedAt': instance.updatedAt,
    };
