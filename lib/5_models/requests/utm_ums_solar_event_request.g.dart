// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_solar_event_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsSolarEventRequest _$UtmUmsSolarEventRequestFromJson(
        Map<String, dynamic> json) =>
    UtmUmsSolarEventRequest(
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$UtmUmsSolarEventRequestToJson(
        UtmUmsSolarEventRequest instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
