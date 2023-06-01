// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_user_sign_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUserSignInRequest _$UtmUmsUserSignInRequestFromJson(
        Map<String, dynamic> json) =>
    UtmUmsUserSignInRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UtmUmsUserSignInRequestToJson(
        UtmUmsUserSignInRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
