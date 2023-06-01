import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_verify_verification_email_response.g.dart';

@JsonSerializable()
class UtmUmsVerifyVerificationEmailResponse {
  final String verifiedToken;
  UtmUmsVerifyVerificationEmailResponse({
    required this.verifiedToken,
  });

  factory UtmUmsVerifyVerificationEmailResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsVerifyVerificationEmailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsVerifyVerificationEmailResponseToJson(this);
}
