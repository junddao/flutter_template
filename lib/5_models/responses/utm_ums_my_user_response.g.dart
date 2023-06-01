// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_my_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsMyUserResponse _$UtmUmsMyUserResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsMyUserResponse(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      birthdate: json['birthdate'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$UtmUmsMyUserResponseToJson(
        UtmUmsMyUserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'birthdate': instance.birthdate,
      'phone': instance.phone,
    };
