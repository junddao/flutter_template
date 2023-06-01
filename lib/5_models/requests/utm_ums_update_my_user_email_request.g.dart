// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_update_my_user_email_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUpdateMyUserEmailRequest _$UtmUmsUpdateMyUserEmailRequestFromJson(
        Map<String, dynamic> json) =>
    UtmUmsUpdateMyUserEmailRequest(
      newEmail: json['newEmail'] as String,
      verifiedToken: json['verifiedToken'] as String,
    );

Map<String, dynamic> _$UtmUmsUpdateMyUserEmailRequestToJson(
        UtmUmsUpdateMyUserEmailRequest instance) =>
    <String, dynamic>{
      'newEmail': instance.newEmail,
      'verifiedToken': instance.verifiedToken,
    };
