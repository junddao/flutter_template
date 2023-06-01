import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_announcement_response.g.dart';

@JsonSerializable()
class UtmUmsAnnouncementResponse {
  final String id;
  final String title;
  final String html;
  final DateTime updatedAt;
  final DateTime createdAt;
  UtmUmsAnnouncementResponse({
    required this.id,
    required this.title,
    required this.html,
    required this.updatedAt,
    required this.createdAt,
  });

  factory UtmUmsAnnouncementResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsAnnouncementResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsAnnouncementResponseToJson(this);
}
