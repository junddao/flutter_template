// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_flight_area_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmFlightAreaPayload _$UtmFlightAreaPayloadFromJson(
        Map<String, dynamic> json) =>
    UtmFlightAreaPayload(
      address: json['address'] as String,
      location:
          (json['location'] as List<dynamic>).map((e) => e as num).toList(),
      radius: json['radius'] as num,
      altitude: json['altitude'] as num,
      notice: json['notice'] as String?,
      manager: json['manager'] as String,
    );

Map<String, dynamic> _$UtmFlightAreaPayloadToJson(
        UtmFlightAreaPayload instance) =>
    <String, dynamic>{
      'address': instance.address,
      'location': instance.location,
      'radius': instance.radius,
      'altitude': instance.altitude,
      'notice': instance.notice,
      'manager': instance.manager,
    };
