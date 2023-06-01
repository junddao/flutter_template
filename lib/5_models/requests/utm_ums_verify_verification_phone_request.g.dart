// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_verify_verification_phone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsVerifyVerificationPhoneRequest
    _$UtmUmsVerifyVerificationPhoneRequestFromJson(Map<String, dynamic> json) =>
        UtmUmsVerifyVerificationPhoneRequest(
          phone: json['phone'] as String,
          verificationCode: json['verificationCode'] as String,
        );

Map<String, dynamic> _$UtmUmsVerifyVerificationPhoneRequestToJson(
        UtmUmsVerifyVerificationPhoneRequest instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'verificationCode': instance.verificationCode,
    };
