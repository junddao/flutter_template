import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_update_my_user_email_request.g.dart';

@JsonSerializable()
class UtmUmsUpdateMyUserEmailRequest {
  final String newEmail;
  final String verifiedToken;
  
  UtmUmsUpdateMyUserEmailRequest({
    required this.newEmail,
    required this.verifiedToken,
  });

  factory UtmUmsUpdateMyUserEmailRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsUpdateMyUserEmailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUpdateMyUserEmailRequestToJson(this);
}
