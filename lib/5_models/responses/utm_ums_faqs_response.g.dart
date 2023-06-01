// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_faqs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsFaqsResponse _$UtmUmsFaqsResponseFromJson(Map<String, dynamic> json) =>
    UtmUmsFaqsResponse(
      faqs: (json['faqs'] as List<dynamic>)
          .map((e) => UtmUmsFaqResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      countOfTotal: json['countOfTotal'] as int,
    );

Map<String, dynamic> _$UtmUmsFaqsResponseToJson(UtmUmsFaqsResponse instance) =>
    <String, dynamic>{
      'faqs': instance.faqs,
      'countOfTotal': instance.countOfTotal,
    };
