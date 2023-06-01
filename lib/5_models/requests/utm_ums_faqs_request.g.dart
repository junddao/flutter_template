// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_faqs_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsFaqsRequest _$UtmUmsFaqsRequestFromJson(Map<String, dynamic> json) =>
    UtmUmsFaqsRequest(
      itemCount: json['itemCount'] as int? ?? kDefaultPaginationCnt,
      pageNumber: json['pageNumber'] as int? ?? 1,
      sortBy: $enumDecodeNullable(_$SortByEnumMap, json['sortBy']),
      sortDirection:
          $enumDecodeNullable(_$SortDirectionEnumMap, json['sortDirection']),
    );

Map<String, dynamic> _$UtmUmsFaqsRequestToJson(UtmUmsFaqsRequest instance) =>
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
