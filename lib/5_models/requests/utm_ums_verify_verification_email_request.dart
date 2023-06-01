import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_verify_verification_email_request.g.dart';

@JsonSerializable()
class UtmUmsVerifyVerificationEmailRequest {
  final String email;
  final String verificationCode;
  UtmUmsVerifyVerificationEmailRequest({
    required this.email,
    required this.verificationCode,
  });

  factory UtmUmsVerifyVerificationEmailRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsVerifyVerificationEmailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsVerifyVerificationEmailRequestToJson(this);
}
