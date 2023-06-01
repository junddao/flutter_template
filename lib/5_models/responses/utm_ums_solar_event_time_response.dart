import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_solar_event_time_response.g.dart';

@JsonSerializable()
class UtmUmsSolarEventTimeResponse {
  String? hour;
  String? minute;
  UtmUmsSolarEventTimeResponse({
    this.hour,
    this.minute,
  });

  factory UtmUmsSolarEventTimeResponse.fromJson(Map<String, dynamic> json) =>
      _$UtmUmsSolarEventTimeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsSolarEventTimeResponseToJson(this);
}
