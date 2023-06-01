// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_terms_titles_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsTermsTitlesRequest _$UtmUmsTermsTitlesRequestFromJson(
        Map<String, dynamic> json) =>
    UtmUmsTermsTitlesRequest(
      itemCount: json['itemCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      sortBy: json['sortBy'] as String?,
      sortDirection: json['sortDirection'] as String?,
    );

Map<String, dynamic> _$UtmUmsTermsTitlesRequestToJson(
        UtmUmsTermsTitlesRequest instance) =>
    <String, dynamic>{
      'itemCount': instance.itemCount,
      'pageNumber': instance.pageNumber,
      'sortBy': instance.sortBy,
      'sortDirection': instance.sortDirection,
    };
