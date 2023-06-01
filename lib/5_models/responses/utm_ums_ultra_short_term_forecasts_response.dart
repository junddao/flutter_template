import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/5_models/payload/utm_ums_ultra_short_term_forecast_payload_utm_ums_ultra_short_term_forecast_payload.dart';

part 'utm_ums_ultra_short_term_forecasts_response.g.dart';

@JsonSerializable()
class UtmUmsUltraShortTermForecastsResponse {
  final String baseDateTime;
  final String baseDateString;
  final String baseTimeString;
  final List<UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayload> forecasts;
  
  UtmUmsUltraShortTermForecastsResponse({
    required this.baseDateTime,
    required this.baseDateString,
    required this.baseTimeString,
    required this.forecasts,
  });

  factory UtmUmsUltraShortTermForecastsResponse.fromJson(Map<String, dynamic> json) =>
      _$UtmUmsUltraShortTermForecastsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUltraShortTermForecastsResponseToJson(this);
}
