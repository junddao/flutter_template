// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_airspace_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsAirspaceResponse _$UtmUmsAirspaceResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsAirspaceResponse(
      id: json['id'] as String,
      key: json['key'] as String,
      type: $enumDecode(_$UtmAirspaceTypeEnumMap, json['type']),
      polygonGeometry: (json['polygonGeometry'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>).map((e) => e as num).toList())
              .toList())
          .toList(),
      labels:
          (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
      updatedAt: json['updatedAt'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$UtmUmsAirspaceResponseToJson(
        UtmUmsAirspaceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'type': _$UtmAirspaceTypeEnumMap[instance.type]!,
      'polygonGeometry': instance.polygonGeometry,
      'labels': instance.labels,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
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
