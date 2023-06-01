import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_verify_verification_phone_response.g.dart';

@JsonSerializable()
class UtmUmsVerifyVerificationPhoneResponse {
  final String verifiedToken;
  UtmUmsVerifyVerificationPhoneResponse({
    required this.verifiedToken,
  });

  factory UtmUmsVerifyVerificationPhoneResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsVerifyVerificationPhoneResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsVerifyVerificationPhoneResponseToJson(this);
}
