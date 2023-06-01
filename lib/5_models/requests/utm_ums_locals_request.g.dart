// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_locals_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsLocalsRequest _$UtmUmsLocalsRequestFromJson(Map<String, dynamic> json) =>
    UtmUmsLocalsRequest(
      itemCount: json['itemCount'] as num?,
      pageNumber: json['pageNumber'] as num?,
      address: json['address'] as String,
    );

Map<String, dynamic> _$UtmUmsLocalsRequestToJson(
        UtmUmsLocalsRequest instance) =>
    <String, dynamic>{
      'itemCount': instance.itemCount,
      'pageNumber': instance.pageNumber,
      'address': instance.address,
    };
