import 'package:json_annotation/json_annotation.dart';

part 'utm_flight_pilot_payload.g.dart';

@JsonSerializable()
class UtmFlightPilotPayload {
  final String name;
  final String birthdate;
  final String zipCode;
  final String addressArea;
  final String addressDetail;
  final String qualification;
  
  UtmFlightPilotPayload({
    required this.name,
    required this.birthdate,
    required this.zipCode,
    required this.addressArea,
    required this.addressDetail,
    required this.qualification,
  });

  factory UtmFlightPilotPayload.fromJson(Map<String, dynamic> json) => _$UtmFlightPilotPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmFlightPilotPayloadToJson(this);
}
