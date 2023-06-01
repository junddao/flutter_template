import 'package:json_annotation/json_annotation.dart';

part 'utm_flight_applicant_payload.g.dart';

@JsonSerializable()
class UtmFlightApplicantPayload {
  final String name;
  final String birthdate;
  final String phone;
  final String subPhone;
  final String? fax;
  final String zipCode;
  final String addressArea;
  final String addressDetail;
  
  UtmFlightApplicantPayload({
    required this.name,
    required this.birthdate,
    required this.phone,
    required this.subPhone,
    this.fax,
    required this.zipCode,
    required this.addressArea,
    required this.addressDetail,
  });

  factory UtmFlightApplicantPayload.fromJson(Map<String, dynamic> json) => _$UtmFlightApplicantPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmFlightApplicantPayloadToJson(this);
}
