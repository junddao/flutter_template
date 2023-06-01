// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_update_my_user_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUpdateMyUserPasswordRequest _$UtmUmsUpdateMyUserPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    UtmUmsUpdateMyUserPasswordRequest(
      currentPassword: json['currentPassword'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$UtmUmsUpdateMyUserPasswordRequestToJson(
        UtmUmsUpdateMyUserPasswordRequest instance) =>
    <String, dynamic>{
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
    };
