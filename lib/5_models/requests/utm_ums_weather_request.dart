import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_weather_request.g.dart';

@JsonSerializable()
class UtmUmsWeatherRequest {
  final num longitude;
  final num latitude;

  UtmUmsWeatherRequest({
    required this.longitude,
    required this.latitude,
  });

  factory UtmUmsWeatherRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsWeatherRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsWeatherRequestToJson(this);
}
