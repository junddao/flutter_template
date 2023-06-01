import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/5_models/payload/utm_ums_recent_kindex_payload.dart';
import 'package:smatii/5_models/responses/utm_ums_magnetism_response.dart';

part 'utm_ums_kindex_response.g.dart';

@JsonSerializable()
class UtmUmsKindexResponse {
  final num currentP;
  final num currentK;
  final num max24P;
  final num max24K;
  final List<UtmUmsRecentKindexPayload> recent;
  final UtmUmsMagnetismResponse magnetism;
  final String updatedAt;
  
  UtmUmsKindexResponse({
    required this.currentP,
    required this.currentK,
    required this.max24P,
    required this.max24K,
    required this.recent,
    required this.magnetism,
    required this.updatedAt,
  });

  factory UtmUmsKindexResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsKindexResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsKindexResponseToJson(this);
}
