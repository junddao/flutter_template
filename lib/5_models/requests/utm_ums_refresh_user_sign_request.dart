import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_refresh_user_sign_request.g.dart';

@JsonSerializable()
class UtmUmsRefreshUserSignRequest {
  final String refreshToken;
  
  UtmUmsRefreshUserSignRequest({
    required this.refreshToken,
  });

  factory UtmUmsRefreshUserSignRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsRefreshUserSignRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsRefreshUserSignRequestToJson(this);
}
