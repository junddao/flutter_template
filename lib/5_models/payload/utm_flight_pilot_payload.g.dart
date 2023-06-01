// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_flight_pilot_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmFlightPilotPayload _$UtmFlightPilotPayloadFromJson(
        Map<String, dynamic> json) =>
    UtmFlightPilotPayload(
      name: json['name'] as String,
      birthdate: json['birthdate'] as String,
      zipCode: json['zipCode'] as String,
      addressArea: json['addressArea'] as String,
      addressDetail: json['addressDetail'] as String,
      qualification: json['qualification'] as String,
    );

Map<String, dynamic> _$UtmFlightPilotPayloadToJson(
        UtmFlightPilotPayload instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthdate': instance.birthdate,
      'zipCode': instance.zipCode,
      'addressArea': instance.addressArea,
      'addressDetail': instance.addressDetail,
      'qualification': instance.qualification,
    };
