import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_user_sign_in_response.g.dart';

@JsonSerializable()
class UtmUmsUserSignInResponse {

  final String accessToken;
  final String refreshToken;
  final String accessTokenExpiresIn;
  final String refreshTokenExpiresIn;

  UtmUmsUserSignInResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.accessTokenExpiresIn,
    required this.refreshTokenExpiresIn,
  });

  factory UtmUmsUserSignInResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsUserSignInResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUserSignInResponseToJson(this);
}
