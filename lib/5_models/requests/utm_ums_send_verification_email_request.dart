import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_send_verification_email_request.g.dart';

@JsonSerializable()
class UtmUmsSendVerificationEmailRequest {
  final String email;
  UtmUmsSendVerificationEmailRequest({
    required this.email,
  });

  factory UtmUmsSendVerificationEmailRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsSendVerificationEmailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsSendVerificationEmailRequestToJson(this);
}
