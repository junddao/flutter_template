// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_uim_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUimResponse _$UtmUmsUimResponseFromJson(Map<String, dynamic> json) =>
    UtmUmsUimResponse(
      id: json['id'] as String,
      registerUserId: json['registerUserId'] as String,
      applicant: UtmUimApplicantPayload.fromJson(
          json['applicant'] as Map<String, dynamic>),
      flight:
          UtmFlightLitePayload.fromJson(json['flight'] as Map<String, dynamic>),
      callSign: json['callSign'] as String,
      issuancePeriodFrom: json['issuancePeriodFrom'] as String,
      issuancePeriodTo: json['issuancePeriodTo'] as String,
      shippingAddress: json['shippingAddress'] as String,
      pickUpAddress: json['pickUpAddress'] as String?,
      isShipped: json['isShipped'] as bool,
      shippingTrackingNumber: json['shippingTrackingNumber'] as String?,
      shippedAt: json['shippedAt'] as String?,
      status: json['status'] as String,
      statusLogs: (json['statusLogs'] as List<dynamic>)
          .map((e) =>
              UtmUmsUimStatusLogResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updatedAt'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$UtmUmsUimResponseToJson(UtmUmsUimResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'registerUserId': instance.registerUserId,
      'applicant': instance.applicant,
      'flight': instance.flight,
      'callSign': instance.callSign,
      'issuancePeriodFrom': instance.issuancePeriodFrom,
      'issuancePeriodTo': instance.issuancePeriodTo,
      'shippingAddress': instance.shippingAddress,
      'pickUpAddress': instance.pickUpAddress,
      'isShipped': instance.isShipped,
      'shippingTrackingNumber': instance.shippingTrackingNumber,
      'shippedAt': instance.shippedAt,
      'status': instance.status,
      'statusLogs': instance.statusLogs,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
    };
