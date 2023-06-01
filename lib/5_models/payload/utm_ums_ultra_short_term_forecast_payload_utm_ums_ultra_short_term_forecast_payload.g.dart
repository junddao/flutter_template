// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_ultra_short_term_forecast_payload_utm_ums_ultra_short_term_forecast_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayload
    _$UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayloadFromJson(
            Map<String, dynamic> json) =>
        UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayload(
          forecastDateTime: json['forecastDateTime'] as String,
          forecastDateString: json['forecastDateString'] as String,
          forecastTimeString: json['forecastTimeString'] as String,
          temperatureCelsius: json['temperatureCelsius'] as num,
          hourPrecipitationAmountMillimeter:
              json['hourPrecipitationAmountMillimeter'] as num,
          skyStatusCode:
              $enumDecode(_$SkyStatusCodeEnumMap, json['skyStatusCode']),
          uComponentsOfWindMeterPerSecond:
              json['uComponentsOfWindMeterPerSecond'] as num,
          relativeHumidityPercent: json['relativeHumidityPercent'] as num,
          precipitationTypeCode: $enumDecode(
              _$PrecipitationTypeCodeEnumMap, json['precipitationTypeCode']),
          lightningKiloampere: json['lightningKiloampere'] as num,
          windDirectionDegree: json['windDirectionDegree'] as num,
          windDirectionCode: $enumDecode(
              _$WindDirectionCodeEnumMap, json['windDirectionCode']),
          windSpeedMeterPerSecond: json['windSpeedMeterPerSecond'] as num,
        );

Map<String, dynamic>
    _$UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayloadToJson(
            UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayload
                instance) =>
        <String, dynamic>{
          'forecastDateTime': instance.forecastDateTime,
          'forecastDateString': instance.forecastDateString,
          'forecastTimeString': instance.forecastTimeString,
          'temperatureCelsius': instance.temperatureCelsius,
          'hourPrecipitationAmountMillimeter':
              instance.hourPrecipitationAmountMillimeter,
          'skyStatusCode': _$SkyStatusCodeEnumMap[instance.skyStatusCode]!,
          'uComponentsOfWindMeterPerSecond':
              instance.uComponentsOfWindMeterPerSecond,
          'relativeHumidityPercent': instance.relativeHumidityPercent,
          'precipitationTypeCode':
              _$PrecipitationTypeCodeEnumMap[instance.precipitationTypeCode]!,
          'lightningKiloampere': instance.lightningKiloampere,
          'windDirectionDegree': instance.windDirectionDegree,
          'windDirectionCode':
              _$WindDirectionCodeEnumMap[instance.windDirectionCode]!,
          'windSpeedMeterPerSecond': instance.windSpeedMeterPerSecond,
        };

const _$SkyStatusCodeEnumMap = {
  SkyStatusCode.CLEAR: 'CLEAR',
  SkyStatusCode.CLOUDY: 'CLOUDY',
  SkyStatusCode.OVERCAST: 'OVERCAST',
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
