import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_recent_kindex_payload.g.dart';

@JsonSerializable()
class UtmUmsRecentKindexPayload {
  final num kp;
  final num kk;
  final String updatedAt;
  
  UtmUmsRecentKindexPayload({
    required this.kp,
    required this.kk,
    required this.updatedAt,
  });

  factory UtmUmsRecentKindexPayload.fromJson(Map<String, dynamic> json) => _$UtmUmsRecentKindexPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsRecentKindexPayloadToJson(this);
}
