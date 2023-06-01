import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_local_response.g.dart';

@JsonSerializable()
class UtmUmsLocalResponse {
  final num? no;
  final String lotNumberAddress;
  final String? roadAddress;
  final String? place;
  final num longitude;
  final num latitude;
  
  UtmUmsLocalResponse({
    this.no,
    required this.lotNumberAddress,
    this.roadAddress,
    this.place,
    required this.longitude,
    required this.latitude,
  });

  factory UtmUmsLocalResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsLocalResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsLocalResponseToJson(this);
}
