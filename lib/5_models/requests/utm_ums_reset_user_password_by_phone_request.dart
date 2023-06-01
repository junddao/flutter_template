import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_reset_user_password_by_phone_request.g.dart';

@JsonSerializable()
class UtmUmsResetUserPasswordByPhoneRequest {
  final String verifiedToken;
  final String phone;
  final String password;
  
  UtmUmsResetUserPasswordByPhoneRequest({
    required this.verifiedToken,
    required this.phone,
    required this.password,
  });

  factory UtmUmsResetUserPasswordByPhoneRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsResetUserPasswordByPhoneRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsResetUserPasswordByPhoneRequestToJson(this);
}
