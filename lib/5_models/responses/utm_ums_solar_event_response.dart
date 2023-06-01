import 'package:json_annotation/json_annotation.dart';

import 'utm_ums_solar_event_time_response.dart';

part 'utm_ums_solar_event_response.g.dart';

@JsonSerializable()
class UtmUmsSolarEventResponse {
  UtmUmsSolarEventTimeResponse? sunriseTime;
  UtmUmsSolarEventTimeResponse? sunsetTime;
  UtmUmsSolarEventResponse({
    this.sunriseTime,
    this.sunsetTime,
  });

  factory UtmUmsSolarEventResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsSolarEventResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsSolarEventResponseToJson(this);
}
