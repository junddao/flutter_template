// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_flight_plan_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmFlightPlanPayload _$UtmFlightPlanPayloadFromJson(
        Map<String, dynamic> json) =>
    UtmFlightPlanPayload(
      periodFrom: json['periodFrom'] as String,
      periodTo: json['periodTo'] as String,
      purpose: json['purpose'] as String,
      flightRules: json['flightRules'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$UtmFlightPlanPayloadToJson(
        UtmFlightPlanPayload instance) =>
    <String, dynamic>{
      'periodFrom': instance.periodFrom,
      'periodTo': instance.periodTo,
      'purpose': instance.purpose,
      'flightRules': instance.flightRules,
      'note': instance.note,
    };
