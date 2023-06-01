import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/utils/enums.dart';

part 'utm_ums_airspaces_request.g.dart';

@JsonSerializable()
class UtmUmsAirspacesRequest {
  final num? itemCount;
  final num? pageNumber;
  final List<UtmAirspaceType>? types;
  final num? pointLongitude;
  final num? pointLatitude;
  final num? boxWestLongitude;
  final num? boxSouthLatitude;
  final num? boxEastLongitude;
  final num? boxNorthLatitude;
  
  UtmUmsAirspacesRequest({
    this.itemCount,
    this.pageNumber,
    this.types,
    this.pointLongitude,
    this.pointLatitude,
    this.boxWestLongitude,
    this.boxSouthLatitude,
    this.boxEastLongitude,
    this.boxNorthLatitude,
  });

  factory UtmUmsAirspacesRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsAirspacesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsAirspacesRequestToJson(this);
}
