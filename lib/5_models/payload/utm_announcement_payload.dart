import 'package:json_annotation/json_annotation.dart';

part 'utm_announcement_payload.g.dart';

@JsonSerializable()
class UtmAnnouncementPayload {
  final String test;

  const UtmAnnouncementPayload({
    required this.test,
  });

  factory UtmAnnouncementPayload.fromJson(Map<String, dynamic> json) => _$UtmAnnouncementPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmAnnouncementPayloadToJson(this);
}
