import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_verify_verification_phone_request.g.dart';

@JsonSerializable()
class UtmUmsVerifyVerificationPhoneRequest {
  final String phone;
  final String verificationCode;
  
  UtmUmsVerifyVerificationPhoneRequest({
    required this.phone,
    required this.verificationCode,
  });

  factory UtmUmsVerifyVerificationPhoneRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsVerifyVerificationPhoneRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsVerifyVerificationPhoneRequestToJson(this);
}
