// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_flight_lite_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmFlightLitePayload _$UtmFlightLitePayloadFromJson(
        Map<String, dynamic> json) =>
    UtmFlightLitePayload(
      approvalNumber: json['approvalNumber'] as String,
      applicant: UtmFlightApplicantPayload.fromJson(
          json['applicant'] as Map<String, dynamic>),
      pilot:
          UtmFlightPilotPayload.fromJson(json['pilot'] as Map<String, dynamic>),
      plan: UtmFlightPlanPayload.fromJson(json['plan'] as Map<String, dynamic>),
      areas: (json['areas'] as List<dynamic>)
          .map((e) => UtmFlightAreaPayload.fromJson(e as Map<String, dynamic>))
          .toList(),
      device: UtmFlightDevicePayload.fromJson(
          json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UtmFlightLitePayloadToJson(
        UtmFlightLitePayload instance) =>
    <String, dynamic>{
      'approvalNumber': instance.approvalNumber,
      'applicant': instance.applicant,
      'pilot': instance.pilot,
      'plan': instance.plan,
      'areas': instance.areas,
      'device': instance.device,
    };
