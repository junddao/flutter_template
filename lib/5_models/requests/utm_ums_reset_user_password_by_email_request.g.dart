// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_reset_user_password_by_email_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsResetUserPasswordByEmailRequest
    _$UtmUmsResetUserPasswordByEmailRequestFromJson(
            Map<String, dynamic> json) =>
        UtmUmsResetUserPasswordByEmailRequest(
          verifiedToken: json['verifiedToken'] as String,
          email: json['email'] as String,
          password: json['password'] as String,
        );

Map<String, dynamic> _$UtmUmsResetUserPasswordByEmailRequestToJson(
        UtmUmsResetUserPasswordByEmailRequest instance) =>
    <String, dynamic>{
      'verifiedToken': instance.verifiedToken,
      'email': instance.email,
      'password': instance.password,
    };
