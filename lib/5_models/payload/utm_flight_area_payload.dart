import 'package:json_annotation/json_annotation.dart';

part 'utm_flight_area_payload.g.dart';

@JsonSerializable()
class UtmFlightAreaPayload {
  final String address;
  final List<num> location;
  final num radius;
  final num altitude;
  final String? notice;
  final String manager;
  
  UtmFlightAreaPayload({
    required this.address,
    required this.location,
    required this.radius,
    required this.altitude,
    this.notice,
    required this.manager,
  });

  factory UtmFlightAreaPayload.fromJson(Map<String, dynamic> json) => _$UtmFlightAreaPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmFlightAreaPayloadToJson(this);
}
