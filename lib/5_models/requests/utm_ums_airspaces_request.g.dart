// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_airspaces_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsAirspacesRequest _$UtmUmsAirspacesRequestFromJson(
        Map<String, dynamic> json) =>
    UtmUmsAirspacesRequest(
      itemCount: json['itemCount'] as num?,
      pageNumber: json['pageNumber'] as num?,
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$UtmAirspaceTypeEnumMap, e))
          .toList(),
      pointLongitude: json['pointLongitude'] as num?,
      pointLatitude: json['pointLatitude'] as num?,
      boxWestLongitude: json['boxWestLongitude'] as num?,
      boxSouthLatitude: json['boxSouthLatitude'] as num?,
      boxEastLongitude: json['boxEastLongitude'] as num?,
      boxNorthLatitude: json['boxNorthLatitude'] as num?,
    );

Map<String, dynamic> _$UtmUmsAirspacesRequestToJson(
        UtmUmsAirspacesRequest instance) =>
    <String, dynamic>{
      'itemCount': instance.itemCount,
      'pageNumber': instance.pageNumber,
      'types':
          instance.types?.map((e) => _$UtmAirspaceTypeEnumMap[e]!).toList(),
      'pointLongitude': instance.pointLongitude,
      'pointLatitude': instance.pointLatitude,
      'boxWestLongitude': instance.boxWestLongitude,
      'boxSouthLatitude': instance.boxSouthLatitude,
      'boxEastLongitude': instance.boxEastLongitude,
      'boxNorthLatitude': instance.boxNorthLatitude,
    };

const _$UtmAirspaceTypeEnumMap = {
  UtmAirspaceType.FLY_ZONE: 'FLY_ZONE',
  UtmAirspaceType.NO_FLY_ZONE: 'NO_FLY_ZONE',
  UtmAirspaceType.CONTROLLED_AIRSPACE: 'CONTROLLED_AIRSPACE',
  UtmAirspaceType.FLIGHT_RESTRICTED_AREA: 'FLIGHT_RESTRICTED_AREA',
  UtmAirspaceType.DANGER_ZONE: 'DANGER_ZONE',
  UtmAirspaceType.MILITARY_OPERATION_AIRSPACE: 'MILITARY_OPERATION_AIRSPACE',
  UtmAirspaceType.AIRFIELD_TRAFFIC_AREA: 'AIRFIELD_TRAFFIC_AREA',
  UtmAirspaceType.ULTRALIGHT_VEHICLE_FLIGHT_AIRSPACE:
      'ULTRALIGHT_VEHICLE_FLIGHT_AIRSPACE',
  UtmAirspaceType.PILOT_PROJECT_AIRSPACE: 'PILOT_PROJECT_AIRSPACE',
};
