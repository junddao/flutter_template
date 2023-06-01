import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/index.dart';

part 'utm_ums_ultra_short_term_forecast_payload_utm_ums_ultra_short_term_forecast_payload.g.dart';

@JsonSerializable()
class UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayload {
  final String forecastDateTime;
  final String forecastDateString;
  final String forecastTimeString;
  final num temperatureCelsius;
  final num hourPrecipitationAmountMillimeter;
  final SkyStatusCode skyStatusCode;
  final num uComponentsOfWindMeterPerSecond;
  final num relativeHumidityPercent;
  final PrecipitationTypeCode precipitationTypeCode;
  final num lightningKiloampere;
  final num windDirectionDegree;
  final WindDirectionCode windDirectionCode;
  final num windSpeedMeterPerSecond;
  
  UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayload({
    required this.forecastDateTime,
    required this.forecastDateString,
    required this.forecastTimeString,
    required this.temperatureCelsius,
    required this.hourPrecipitationAmountMillimeter,
    required this.skyStatusCode,
    required this.uComponentsOfWindMeterPerSecond,
    required this.relativeHumidityPercent,
    required this.precipitationTypeCode,
    required this.lightningKiloampere,
    required this.windDirectionDegree,
    required this.windDirectionCode,
    required this.windSpeedMeterPerSecond,
  });

  factory UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayload.fromJson(Map<String, dynamic> json) => _$UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayloadToJson(this);
}
