import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_send_verification_phone_request.g.dart';

@JsonSerializable()
class UtmUmsSendVerificationPhoneRequest {
  final String phone;
  UtmUmsSendVerificationPhoneRequest({
    required this.phone,
  });

  factory UtmUmsSendVerificationPhoneRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsSendVerificationPhoneRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsSendVerificationPhoneRequestToJson(this);
}
