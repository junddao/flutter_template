import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/index.dart';

part 'utm_ums_airspace_response.g.dart';

@JsonSerializable()
class UtmUmsAirspaceResponse {
  final String id;
  final String key;
  final UtmAirspaceType type;
  final List<List<List<num>>> polygonGeometry;
  final List<String> labels;
  final String updatedAt;
  final String createdAt;
  
  UtmUmsAirspaceResponse({
    required this.id,
    required this.key,
    required this.type,
    required this.polygonGeometry,
    required this.labels,
    required this.updatedAt,
    required this.createdAt,
  });

  factory UtmUmsAirspaceResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsAirspaceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsAirspaceResponseToJson(this);
}
