// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_pilot_rules_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsPilotRulesRequest _$UtmUmsPilotRulesRequestFromJson(
        Map<String, dynamic> json) =>
    UtmUmsPilotRulesRequest(
      itemCount: json['itemCount'] as num?,
      pageNumber: json['pageNumber'] as num?,
      sortBy: $enumDecodeNullable(_$SortByEnumMap, json['sortBy']),
      sortDirection:
          $enumDecodeNullable(_$SortDirectionEnumMap, json['sortDirection']),
    );

Map<String, dynamic> _$UtmUmsPilotRulesRequestToJson(
        UtmUmsPilotRulesRequest instance) =>
    <String, dynamic>{
      'itemCount': instance.itemCount,
      'pageNumber': instance.pageNumber,
      'sortBy': _$SortByEnumMap[instance.sortBy],
      'sortDirection': _$SortDirectionEnumMap[instance.sortDirection],
    };

const _$SortByEnumMap = {
  SortBy.ID: 'ID',
  SortBy.NAME: 'NAME',
  SortBy.POPULAR: 'POPULAR',
  SortBy.DATETIME: 'DATETIME',
  SortBy.SEQUENCE: 'SEQUENCE',
};

const _$SortDirectionEnumMap = {
  SortDirection.ASC: 'ASC',
  SortDirection.DESC: 'DESC',
};
