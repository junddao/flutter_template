import 'package:json_annotation/json_annotation.dart';

part 'utm_uim_applicant_payload.g.dart';

@JsonSerializable()
class UtmUimApplicantPayload {
  final String name;
  final String birthdate;
  final String phone;
  final String? businessName;
  final String? businessNumber;
  
  UtmUimApplicantPayload({
    required this.name,
    required this.birthdate,
    required this.phone,
    this.businessName,
    this.businessNumber,
  });

  factory UtmUimApplicantPayload.fromJson(Map<String, dynamic> json) => _$UtmUimApplicantPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUimApplicantPayloadToJson(this);
}
