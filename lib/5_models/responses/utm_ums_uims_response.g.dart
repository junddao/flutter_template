// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_uims_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUimsResponse _$UtmUmsUimsResponseFromJson(Map<String, dynamic> json) =>
    UtmUmsUimsResponse(
      uims: (json['uims'] as List<dynamic>)
          .map((e) => UtmUmsUimResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      countOfTotal: json['countOfTotal'] as num,
    );

Map<String, dynamic> _$UtmUmsUimsResponseToJson(UtmUmsUimsResponse instance) =>
    <String, dynamic>{
      'uims': instance.uims,
      'countOfTotal': instance.countOfTotal,
    };
