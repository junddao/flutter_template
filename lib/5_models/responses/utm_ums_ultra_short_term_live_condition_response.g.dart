// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_ultra_short_term_live_condition_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUltraShortTermLiveConditionResponse
    _$UtmUmsUltraShortTermLiveConditionResponseFromJson(
            Map<String, dynamic> json) =>
        UtmUmsUltraShortTermLiveConditionResponse(
          baseDateTime: json['baseDateTime'] as String,
          baseDateString: json['baseDateString'] as String,
          baseTimeString: json['baseTimeString'] as String,
          temperatureCelsius: json['temperatureCelsius'] as num,
          hourPrecipitationAmountMillimeter:
              json['hourPrecipitationAmountMillimeter'] as num,
          uComponentsOfWindMeterPerSecond:
              json['uComponentsOfWindMeterPerSecond'] as num,
          vComponentsOfWindMeterPerSecond:
              json['vComponentsOfWindMeterPerSecond'] as num,
          relativeHumidityPercent: json['relativeHumidityPercent'] as num,
          precipitationTypeCode: $enumDecode(
              _$PrecipitationTypeCodeEnumMap, json['precipitationTypeCode']),
          windDirectionDegree: json['windDirectionDegree'] as num,
          windDirectionCode: $enumDecode(
              _$WindDirectionCodeEnumMap, json['windDirectionCode']),
          windSpeedMeterPerSecond: json['windSpeedMeterPerSecond'] as num,
        );

Map<String, dynamic> _$UtmUmsUltraShortTermLiveConditionResponseToJson(
        UtmUmsUltraShortTermLiveConditionResponse instance) =>
    <String, dynamic>{
      'baseDateTime': instance.baseDateTime,
      'baseDateString': instance.baseDateString,
      'baseTimeString': instance.baseTimeString,
      'temperatureCelsius': instance.temperatureCelsius,
      'hourPrecipitationAmountMillimeter':
          instance.hourPrecipitationAmountMillimeter,
      'uComponentsOfWindMeterPerSecond':
          instance.uComponentsOfWindMeterPerSecond,
      'vComponentsOfWindMeterPerSecond':
          instance.vComponentsOfWindMeterPerSecond,
      'relativeHumidityPercent': instance.relativeHumidityPercent,
      'precipitationTypeCode':
          _$PrecipitationTypeCodeEnumMap[instance.precipitationTypeCode]!,
      'windDirectionDegree': instance.windDirectionDegree,
      'windDirectionCode':
          _$WindDirectionCodeEnumMap[instance.windDirectionCode]!,
      'windSpeedMeterPerSecond': instance.windSpeedMeterPerSecond,
    };

const _$PrecipitationTypeCodeEnumMap = {
  PrecipitationTypeCode.NO_INFO: 'NO_INFO',
  PrecipitationTypeCode.NONE: 'NONE',
  PrecipitationTypeCode.RAIN: 'RAIN',
  PrecipitationTypeCode.RAIN_AND_SNOW: 'RAIN_AND_SNOW',
  PrecipitationTypeCode.SNOW: 'SNOW',
  PrecipitationTypeCode.DRIZZLE: 'DRIZZLE',
  PrecipitationTypeCode.DRIZZLE_AND_SNOW_FLURRY: 'DRIZZLE_AND_SNOW_FLURRY',
  PrecipitationTypeCode.SNOW_FLURRY: 'SNOW_FLURRY',
};

const _$WindDirectionCodeEnumMap = {
  WindDirectionCode.N: 'N',
  WindDirectionCode.NNE: 'NNE',
  WindDirectionCode.NE: 'NE',
  WindDirectionCode.ENE: 'ENE',
  WindDirectionCode.E: 'E',
  WindDirectionCode.ESE: 'ESE',
  WindDirectionCode.SE: 'SE',
  WindDirectionCode.SSE: 'SSE',
  WindDirectionCode.S: 'S',
  WindDirectionCode.SSW: 'SSW',
  WindDirectionCode.SW: 'SW',
  WindDirectionCode.WSW: 'WSW',
  WindDirectionCode.W: 'W',
  WindDirectionCode.WNW: 'WNW',
  WindDirectionCode.NW: 'NW',
  WindDirectionCode.NNW: 'NNW',
};
