import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_weather_live_request.g.dart';

@JsonSerializable()
class UtmUmsWeatherLiveRequest {
  final num longitude;
  final num latitude;
  
  UtmUmsWeatherLiveRequest({
    required this.longitude,
    required this.latitude,
  });

  factory UtmUmsWeatherLiveRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsWeatherLiveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsWeatherLiveRequestToJson(this);
}
