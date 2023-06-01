import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_user_sign_in_request.g.dart';

@JsonSerializable()
class UtmUmsUserSignInRequest {

  String email;
  String password;

  UtmUmsUserSignInRequest({
    required this.email,
    required this.password,
  });

  factory UtmUmsUserSignInRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsUserSignInRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUserSignInRequestToJson(this);
}
