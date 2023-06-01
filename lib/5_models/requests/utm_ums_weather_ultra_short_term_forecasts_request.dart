import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_weather_ultra_short_term_forecasts_request.g.dart';

@JsonSerializable()
class UtmUmsWeatherUltraShortTermForecastsRequest {
  final num longitude;
  final num latitude;
  UtmUmsWeatherUltraShortTermForecastsRequest({
    required this.longitude,
    required this.latitude,
  });
  

  factory UtmUmsWeatherUltraShortTermForecastsRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsWeatherUltraShortTermForecastsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsWeatherUltraShortTermForecastsRequestToJson(this);
}
