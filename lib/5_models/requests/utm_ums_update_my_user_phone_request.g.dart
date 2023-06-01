// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_update_my_user_phone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUpdateMyUserPhoneRequest _$UtmUmsUpdateMyUserPhoneRequestFromJson(
        Map<String, dynamic> json) =>
    UtmUmsUpdateMyUserPhoneRequest(
      newPhone: json['newPhone'] as String,
      verifiedToken: json['verifiedToken'] as String,
    );

Map<String, dynamic> _$UtmUmsUpdateMyUserPhoneRequestToJson(
        UtmUmsUpdateMyUserPhoneRequest instance) =>
    <String, dynamic>{
      'newPhone': instance.newPhone,
      'verifiedToken': instance.verifiedToken,
    };
