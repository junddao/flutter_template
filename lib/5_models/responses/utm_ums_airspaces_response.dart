import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/5_models/responses/utm_ums_airspace_response.dart';

part 'utm_ums_airspaces_response.g.dart';

@JsonSerializable()
class UtmUmsAirspacesResponse {
  final List<UtmUmsAirspaceResponse> airspaces;
  final num countOfTotal;
  
  UtmUmsAirspacesResponse({
    required this.airspaces,
    required this.countOfTotal,
  });

  factory UtmUmsAirspacesResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsAirspacesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsAirspacesResponseToJson(this);
}
