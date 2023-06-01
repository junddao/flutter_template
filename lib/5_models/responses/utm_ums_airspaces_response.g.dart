// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_airspaces_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsAirspacesResponse _$UtmUmsAirspacesResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsAirspacesResponse(
      airspaces: (json['airspaces'] as List<dynamic>)
          .map(
              (e) => UtmUmsAirspaceResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      countOfTotal: json['countOfTotal'] as num,
    );

Map<String, dynamic> _$UtmUmsAirspacesResponseToJson(
        UtmUmsAirspacesResponse instance) =>
    <String, dynamic>{
      'airspaces': instance.airspaces,
      'countOfTotal': instance.countOfTotal,
    };
