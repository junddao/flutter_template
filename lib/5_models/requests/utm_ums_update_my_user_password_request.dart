import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_update_my_user_password_request.g.dart';

@JsonSerializable()
class UtmUmsUpdateMyUserPasswordRequest {
  final String currentPassword;
  final String newPassword;
  UtmUmsUpdateMyUserPasswordRequest({
    required this.currentPassword,
    required this.newPassword,
  });

  factory UtmUmsUpdateMyUserPasswordRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsUpdateMyUserPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUpdateMyUserPasswordRequestToJson(this);
}
