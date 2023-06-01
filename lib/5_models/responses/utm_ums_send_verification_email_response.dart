import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_send_verification_email_response.g.dart';

@JsonSerializable()
class UtmUmsSendVerificationEmailResponse {
  final String email;
  UtmUmsSendVerificationEmailResponse({
    required this.email,
  });

  factory UtmUmsSendVerificationEmailResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsSendVerificationEmailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsSendVerificationEmailResponseToJson(this);
}
