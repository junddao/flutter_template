// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_reset_user_password_by_phone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsResetUserPasswordByPhoneRequest
    _$UtmUmsResetUserPasswordByPhoneRequestFromJson(
            Map<String, dynamic> json) =>
        UtmUmsResetUserPasswordByPhoneRequest(
          verifiedToken: json['verifiedToken'] as String,
          phone: json['phone'] as String,
          password: json['password'] as String,
        );

Map<String, dynamic> _$UtmUmsResetUserPasswordByPhoneRequestToJson(
        UtmUmsResetUserPasswordByPhoneRequest instance) =>
    <String, dynamic>{
      'verifiedToken': instance.verifiedToken,
      'phone': instance.phone,
      'password': instance.password,
    };
