// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_uims_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUimsRequest _$UtmUmsUimsRequestFromJson(Map<String, dynamic> json) =>
    UtmUmsUimsRequest(
      itemCount: json['itemCount'] as num?,
      pageNumber: json['pageNumber'] as num?,
      sortBy: json['sortBy'] as String?,
      sortDirection: json['sortDirection'] as String?,
    );

Map<String, dynamic> _$UtmUmsUimsRequestToJson(UtmUmsUimsRequest instance) =>
    <String, dynamic>{
      'itemCount': instance.itemCount,
      'pageNumber': instance.pageNumber,
      'sortBy': instance.sortBy,
      'sortDirection': instance.sortDirection,
    };
