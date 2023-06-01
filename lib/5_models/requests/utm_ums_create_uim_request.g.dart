// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_create_uim_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsCreateUimRequest _$UtmUmsCreateUimRequestFromJson(
        Map<String, dynamic> json) =>
    UtmUmsCreateUimRequest(
      applicant: UtmUimApplicantPayload.fromJson(
          json['applicant'] as Map<String, dynamic>),
      flightApprovalNumber: json['flightApprovalNumber'] as String,
      callSign: json['callSign'] as String,
      issuancePeriodFrom: json['issuancePeriodFrom'] as String,
      issuancePeriodTo: json['issuancePeriodTo'] as String,
      shippingAddress: json['shippingAddress'] as String,
    );

Map<String, dynamic> _$UtmUmsCreateUimRequestToJson(
        UtmUmsCreateUimRequest instance) =>
    <String, dynamic>{
      'applicant': instance.applicant,
      'flightApprovalNumber': instance.flightApprovalNumber,
      'callSign': instance.callSign,
      'issuancePeriodFrom': instance.issuancePeriodFrom,
      'issuancePeriodTo': instance.issuancePeriodTo,
      'shippingAddress': instance.shippingAddress,
    };
