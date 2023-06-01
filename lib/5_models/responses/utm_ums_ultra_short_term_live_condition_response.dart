import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/index.dart';

part 'utm_ums_ultra_short_term_live_condition_response.g.dart';

@JsonSerializable()
class UtmUmsUltraShortTermLiveConditionResponse {
  final String baseDateTime;
  final String baseDateString;
  final String baseTimeString;
  final num temperatureCelsius;
  final num hourPrecipitationAmountMillimeter;
  final num uComponentsOfWindMeterPerSecond;
  final num vComponentsOfWindMeterPerSecond;
  final num relativeHumidityPercent;
  final PrecipitationTypeCode precipitationTypeCode;
  final num windDirectionDegree;
  final WindDirectionCode windDirectionCode;
  final num windSpeedMeterPerSecond;
  
  UtmUmsUltraShortTermLiveConditionResponse({
    required this.baseDateTime,
    required this.baseDateString,
    required this.baseTimeString,
    required this.temperatureCelsius,
    required this.hourPrecipitationAmountMillimeter,
    required this.uComponentsOfWindMeterPerSecond,
    required this.vComponentsOfWindMeterPerSecond,
    required this.relativeHumidityPercent,
    required this.precipitationTypeCode,
    required this.windDirectionDegree,
    required this.windDirectionCode,
    required this.windSpeedMeterPerSecond,
  });

  factory UtmUmsUltraShortTermLiveConditionResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsUltraShortTermLiveConditionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUltraShortTermLiveConditionResponseToJson(this);
}
