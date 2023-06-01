import 'package:json_annotation/json_annotation.dart';

part 'utm_flight_plan_payload.g.dart';

@JsonSerializable()
class UtmFlightPlanPayload {
  final String periodFrom;
  final String periodTo;
  final String purpose;
  final String flightRules;
  final String? note;
  
  UtmFlightPlanPayload({
    required this.periodFrom,
    required this.periodTo,
    required this.purpose,
    required this.flightRules,
    this.note,
  });

  factory UtmFlightPlanPayload.fromJson(Map<String, dynamic> json) => _$UtmFlightPlanPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmFlightPlanPayloadToJson(this);
}
