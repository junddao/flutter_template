import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_user_sign_up_request.g.dart';

@JsonSerializable()
class UtmUmsUserSignUpRequest {

  String email;
  String emailVerifiedToken;
  String password;
  String name;
  String birthdate;
  String phone;
  String phoneVerifiedToken;

  UtmUmsUserSignUpRequest({
    required this.email,
    required this.emailVerifiedToken,
    required this.password,
    required this.name,
    required this.birthdate,
    required this.phone,
    required this.phoneVerifiedToken,
  });

  factory UtmUmsUserSignUpRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsUserSignUpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUserSignUpRequestToJson(this);
}
