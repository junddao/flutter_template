import 'package:json_annotation/json_annotation.dart';

import 'package:smatii/5_models/responses/utm_ums_announcement_response.dart';

part 'utm_ums_announcements_response.g.dart';

@JsonSerializable()
class UtmUmsAnnouncementsResponse {
  final List<UtmUmsAnnouncementResponse> announcements;
  final int countOfTotal;
  UtmUmsAnnouncementsResponse({
    required this.announcements,
    required this.countOfTotal,
  });

  factory UtmUmsAnnouncementsResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsAnnouncementsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsAnnouncementsResponseToJson(this);
}
