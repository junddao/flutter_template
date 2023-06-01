import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_reset_user_password_by_email_request.g.dart';

@JsonSerializable()
class UtmUmsResetUserPasswordByEmailRequest {
  final String verifiedToken;
  final String email;
  final String password;
  
  UtmUmsResetUserPasswordByEmailRequest({
    required this.verifiedToken,
    required this.email,
    required this.password,
  });

  factory UtmUmsResetUserPasswordByEmailRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsResetUserPasswordByEmailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsResetUserPasswordByEmailRequestToJson(this);
}
