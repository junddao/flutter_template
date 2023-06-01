import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/index.dart';

part 'utm_ums_flight_response.g.dart';

@JsonSerializable()
class UtmUmsFlightResponse {
  final String approvalNumber;
  final UtmUimApplicantPayload applicant;
  final UtmFlightPilotPayload pilot;
  final UtmFlightPlanPayload plan;
  final List<UtmFlightAreaPayload> areas;
  final UtmFlightDevicePayload device;
  final String updatedAt;
  final String createdAt;
  
  UtmUmsFlightResponse({
    required this.approvalNumber,
    required this.applicant,
    required this.pilot,
    required this.plan,
    required this.areas,
    required this.device,
    required this.updatedAt,
    required this.createdAt,
  });

  factory UtmUmsFlightResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsFlightResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsFlightResponseToJson(this);
}
