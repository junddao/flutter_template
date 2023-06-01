// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_flight_applicant_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmFlightApplicantPayload _$UtmFlightApplicantPayloadFromJson(
        Map<String, dynamic> json) =>
    UtmFlightApplicantPayload(
      name: json['name'] as String,
      birthdate: json['birthdate'] as String,
      phone: json['phone'] as String,
      subPhone: json['subPhone'] as String,
      fax: json['fax'] as String?,
      zipCode: json['zipCode'] as String,
      addressArea: json['addressArea'] as String,
      addressDetail: json['addressDetail'] as String,
    );

Map<String, dynamic> _$UtmFlightApplicantPayloadToJson(
        UtmFlightApplicantPayload instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthdate': instance.birthdate,
      'phone': instance.phone,
      'subPhone': instance.subPhone,
      'fax': instance.fax,
      'zipCode': instance.zipCode,
      'addressArea': instance.addressArea,
      'addressDetail': instance.addressDetail,
    };
