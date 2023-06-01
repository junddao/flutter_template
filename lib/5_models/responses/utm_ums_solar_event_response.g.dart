// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_solar_event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsSolarEventResponse _$UtmUmsSolarEventResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsSolarEventResponse(
      sunriseTime: json['sunriseTime'] == null
          ? null
          : UtmUmsSolarEventTimeResponse.fromJson(
              json['sunriseTime'] as Map<String, dynamic>),
      sunsetTime: json['sunsetTime'] == null
          ? null
          : UtmUmsSolarEventTimeResponse.fromJson(
              json['sunsetTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UtmUmsSolarEventResponseToJson(
        UtmUmsSolarEventResponse instance) =>
    <String, dynamic>{
      'sunriseTime': instance.sunriseTime,
      'sunsetTime': instance.sunsetTime,
    };
