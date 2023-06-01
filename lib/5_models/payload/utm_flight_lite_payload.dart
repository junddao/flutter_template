
import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/index.dart';

part 'utm_flight_lite_payload.g.dart';

@JsonSerializable()
class UtmFlightLitePayload {
  final String approvalNumber;
  final UtmFlightApplicantPayload applicant;
  final UtmFlightPilotPayload pilot;
  final UtmFlightPlanPayload plan;
  final List<UtmFlightAreaPayload> areas;
  final UtmFlightDevicePayload device;
  UtmFlightLitePayload({
    required this.approvalNumber,
    required this.applicant,
    required this.pilot,
    required this.plan,
    required this.areas,
    required this.device,
  });

  factory UtmFlightLitePayload.fromJson(Map<String, dynamic> json) => _$UtmFlightLitePayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmFlightLitePayloadToJson(this);
}

