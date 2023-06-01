// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_terms_titles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsTermsTitlesResponse _$UtmUmsTermsTitlesResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsTermsTitlesResponse(
      titles: (json['titles'] as List<dynamic>)
          .map((e) =>
              UtmUmsTermTitleResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      countOfTotal: json['countOfTotal'] as int,
    );

Map<String, dynamic> _$UtmUmsTermsTitlesResponseToJson(
        UtmUmsTermsTitlesResponse instance) =>
    <String, dynamic>{
      'titles': instance.titles,
      'countOfTotal': instance.countOfTotal,
    };
