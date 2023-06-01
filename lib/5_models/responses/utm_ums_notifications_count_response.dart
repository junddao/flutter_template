import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_notifications_count_response.g.dart';

@JsonSerializable()
class UtmUmsNotificationsCountResponse {
  final num count;
  
  UtmUmsNotificationsCountResponse({
    required this.count,
  });

  factory UtmUmsNotificationsCountResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsNotificationsCountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsNotificationsCountResponseToJson(this);
}
