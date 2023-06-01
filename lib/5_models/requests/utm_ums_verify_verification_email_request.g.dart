// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_verify_verification_email_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsVerifyVerificationEmailRequest
    _$UtmUmsVerifyVerificationEmailRequestFromJson(Map<String, dynamic> json) =>
        UtmUmsVerifyVerificationEmailRequest(
          email: json['email'] as String,
          verificationCode: json['verificationCode'] as String,
        );

Map<String, dynamic> _$UtmUmsVerifyVerificationEmailRequestToJson(
        UtmUmsVerifyVerificationEmailRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'verificationCode': instance.verificationCode,
    };
