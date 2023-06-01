import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_my_user_response.g.dart';

@JsonSerializable()
class UtmUmsMyUserResponse {
  final String id;
  final String email;
  final String name;
  final String birthdate;
  final String phone;
  
  UtmUmsMyUserResponse({
    required this.id,
    required this.email,
    required this.name,
    required this.birthdate,
    required this.phone,
  });

  factory UtmUmsMyUserResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsMyUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsMyUserResponseToJson(this);
}
