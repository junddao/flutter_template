import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/5_models/payload/utm_flight_lite_payload.dart';
import 'package:smatii/5_models/payload/utm_uim_applicant_payload.dart';
import 'package:smatii/5_models/responses/utm_ums_uim_status_log_response.dart';

part 'utm_ums_uim_response.g.dart';

@JsonSerializable()
class UtmUmsUimResponse {
  final String id;
  final String registerUserId;
  final UtmUimApplicantPayload applicant;
  final UtmFlightLitePayload flight;
  final String callSign;
  final String issuancePeriodFrom;
  final String issuancePeriodTo;
  final String shippingAddress;
  final String? pickUpAddress;
  final bool isShipped;
  final String? shippingTrackingNumber;
  final String? shippedAt;
  final String status;
  final List<UtmUmsUimStatusLogResponse> statusLogs;
  final String updatedAt;
  final String createdAt;

  UtmUmsUimResponse({
    required this.id,
    required this.registerUserId,
    required this.applicant,
    required this.flight,
    required this.callSign,
    required this.issuancePeriodFrom,
    required this.issuancePeriodTo,
    required this.shippingAddress,
    required this.pickUpAddress,
    required this.isShipped,
    this.shippingTrackingNumber,
    required this.shippedAt,
    required this.status,
    required this.statusLogs,
    required this.updatedAt,
    required this.createdAt,
  });


  factory UtmUmsUimResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsUimResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUimResponseToJson(this);
}
