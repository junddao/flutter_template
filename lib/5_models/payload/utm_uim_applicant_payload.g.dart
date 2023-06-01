// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_uim_applicant_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUimApplicantPayload _$UtmUimApplicantPayloadFromJson(
        Map<String, dynamic> json) =>
    UtmUimApplicantPayload(
      name: json['name'] as String,
      birthdate: json['birthdate'] as String,
      phone: json['phone'] as String,
      businessName: json['businessName'] as String?,
      businessNumber: json['businessNumber'] as String?,
    );

Map<String, dynamic> _$UtmUimApplicantPayloadToJson(
        UtmUimApplicantPayload instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthdate': instance.birthdate,
      'phone': instance.phone,
      'businessName': instance.businessName,
      'businessNumber': instance.businessNumber,
    };
