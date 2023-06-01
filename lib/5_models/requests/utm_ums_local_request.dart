import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_local_request.g.dart';

@JsonSerializable()
class UtmUmsLocalRequest {

  final num longitude;
  final num latitude;

  UtmUmsLocalRequest({
    required this.longitude,
    required this.latitude,
  });
  

  factory UtmUmsLocalRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsLocalRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsLocalRequestToJson(this);
}
