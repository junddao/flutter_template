// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_flight_device_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmFlightDevicePayload _$UtmFlightDevicePayloadFromJson(
        Map<String, dynamic> json) =>
    UtmFlightDevicePayload(
      type: $enumDecode(_$UtmDeviceTypeEnumMap, json['type']),
      registrationNumber: json['registrationNumber'] as String,
      modelName: json['modelName'] as String,
      manufacturer: json['manufacturer'] as String,
      specification: json['specification'] as String,
      weight: json['weight'] as String,
      isCommercial: json['isCommercial'] as bool,
      isResearch: json['isResearch'] as bool,
      ownerName: json['ownerName'] as String,
      ownerPhone: json['ownerPhone'] as String,
      safetyCertificationNumber: json['safetyCertificationNumber'] as String?,
      safetyCertificationPeriodFrom:
          json['safetyCertificationPeriodFrom'] as String?,
      safetyCertificationPeriodTo:
          json['safetyCertificationPeriodTo'] as String?,
      isInsured: json['isInsured'] as bool?,
      insuranceDescription: json['insuranceDescription'] as String?,
    );

Map<String, dynamic> _$UtmFlightDevicePayloadToJson(
        UtmFlightDevicePayload instance) =>
    <String, dynamic>{
      'type': _$UtmDeviceTypeEnumMap[instance.type]!,
      'registrationNumber': instance.registrationNumber,
      'modelName': instance.modelName,
      'manufacturer': instance.manufacturer,
      'specification': instance.specification,
      'weight': instance.weight,
      'isCommercial': instance.isCommercial,
      'isResearch': instance.isResearch,
      'ownerName': instance.ownerName,
      'ownerPhone': instance.ownerPhone,
      'safetyCertificationNumber': instance.safetyCertificationNumber,
      'safetyCertificationPeriodFrom': instance.safetyCertificationPeriodFrom,
      'safetyCertificationPeriodTo': instance.safetyCertificationPeriodTo,
      'isInsured': instance.isInsured,
      'insuranceDescription': instance.insuranceDescription,
    };

const _$UtmDeviceTypeEnumMap = {
  UtmDeviceType.UNMANNED_AIRCRAFT: 'UNMANNED_AIRCRAFT',
  UtmDeviceType.UNMANNED_HELICOPTER: 'UNMANNED_HELICOPTER',
  UtmDeviceType.UNMANNED_MULTICOPTER: 'UNMANNED_MULTICOPTER',
  UtmDeviceType.UNMANNED_AIRSHIP: 'UNMANNED_AIRSHIP',
};
