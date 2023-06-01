import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_update_my_user_phone_request.g.dart';

@JsonSerializable()
class UtmUmsUpdateMyUserPhoneRequest {
  final String newPhone;
  final String verifiedToken;
  
  UtmUmsUpdateMyUserPhoneRequest({
    required this.newPhone,
    required this.verifiedToken,
  });

  factory UtmUmsUpdateMyUserPhoneRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsUpdateMyUserPhoneRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUpdateMyUserPhoneRequestToJson(this);
}
