import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/5_models/payload/utm_uim_applicant_payload.dart';

part 'utm_ums_create_uim_request.g.dart';

@JsonSerializable()
class UtmUmsCreateUimRequest {
  final UtmUimApplicantPayload applicant;
  final String flightApprovalNumber;
  final String callSign;
  final String issuancePeriodFrom;
  final String issuancePeriodTo;
  final String shippingAddress;
  
  UtmUmsCreateUimRequest({
    required this.applicant,
    required this.flightApprovalNumber,
    required this.callSign,
    required this.issuancePeriodFrom,
    required this.issuancePeriodTo,
    required this.shippingAddress,
  });

  factory UtmUmsCreateUimRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsCreateUimRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsCreateUimRequestToJson(this);
}
