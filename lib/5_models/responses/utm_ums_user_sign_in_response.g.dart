// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_user_sign_in_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUserSignInResponse _$UtmUmsUserSignInResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsUserSignInResponse(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      accessTokenExpiresIn: json['accessTokenExpiresIn'] as String,
      refreshTokenExpiresIn: json['refreshTokenExpiresIn'] as String,
    );

Map<String, dynamic> _$UtmUmsUserSignInResponseToJson(
        UtmUmsUserSignInResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'accessTokenExpiresIn': instance.accessTokenExpiresIn,
      'refreshTokenExpiresIn': instance.refreshTokenExpiresIn,
    };
