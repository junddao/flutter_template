// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_user_sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUserSignUpRequest _$UtmUmsUserSignUpRequestFromJson(
        Map<String, dynamic> json) =>
    UtmUmsUserSignUpRequest(
      email: json['email'] as String,
      emailVerifiedToken: json['emailVerifiedToken'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      birthdate: json['birthdate'] as String,
      phone: json['phone'] as String,
      phoneVerifiedToken: json['phoneVerifiedToken'] as String,
    );

Map<String, dynamic> _$UtmUmsUserSignUpRequestToJson(
        UtmUmsUserSignUpRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'emailVerifiedToken': instance.emailVerifiedToken,
      'password': instance.password,
      'name': instance.name,
      'birthdate': instance.birthdate,
      'phone': instance.phone,
      'phoneVerifiedToken': instance.phoneVerifiedToken,
    };
