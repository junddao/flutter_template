// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_local_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsLocalResponse _$UtmUmsLocalResponseFromJson(Map<String, dynamic> json) =>
    UtmUmsLocalResponse(
      no: json['no'] as num?,
      lotNumberAddress: json['lotNumberAddress'] as String,
      roadAddress: json['roadAddress'] as String?,
      place: json['place'] as String?,
      longitude: json['longitude'] as num,
      latitude: json['latitude'] as num,
    );

Map<String, dynamic> _$UtmUmsLocalResponseToJson(
        UtmUmsLocalResponse instance) =>
    <String, dynamic>{
      'no': instance.no,
      'lotNumberAddress': instance.lotNumberAddress,
      'roadAddress': instance.roadAddress,
      'place': instance.place,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
