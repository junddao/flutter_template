// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_flight_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsFlightResponse _$UtmUmsFlightResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsFlightResponse(
      approvalNumber: json['approvalNumber'] as String,
      applicant: UtmUimApplicantPayload.fromJson(
          json['applicant'] as Map<String, dynamic>),
      pilot:
          UtmFlightPilotPayload.fromJson(json['pilot'] as Map<String, dynamic>),
      plan: UtmFlightPlanPayload.fromJson(json['plan'] as Map<String, dynamic>),
      areas: (json['areas'] as List<dynamic>)
          .map((e) => UtmFlightAreaPayload.fromJson(e as Map<String, dynamic>))
          .toList(),
      device: UtmFlightDevicePayload.fromJson(
          json['device'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$UtmUmsFlightResponseToJson(
        UtmUmsFlightResponse instance) =>
    <String, dynamic>{
      'approvalNumber': instance.approvalNumber,
      'applicant': instance.applicant,
      'pilot': instance.pilot,
      'plan': instance.plan,
      'areas': instance.areas,
      'device': instance.device,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
    };
