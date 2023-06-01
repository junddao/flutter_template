import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/5_models/payload/utm_ums_ultra_short_term_forecast_payload_utm_ums_ultra_short_term_forecast_payload.dart';
import 'package:smatii/5_models/responses/utm_ums_ultra_short_term_live_condition_response.dart';

part 'utm_ums_weather_response.g.dart';

@JsonSerializable()
class UtmUmsWeatherResponse {
  final UtmUmsUltraShortTermLiveConditionResponse live;
  final List<UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayload> forecasts;
  
  UtmUmsWeatherResponse({
    required this.live,
    required this.forecasts,
  });

  factory UtmUmsWeatherResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsWeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsWeatherResponseToJson(this);
}
