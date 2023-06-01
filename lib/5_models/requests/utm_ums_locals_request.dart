import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_locals_request.g.dart';

@JsonSerializable()
class UtmUmsLocalsRequest {
  final num? itemCount;
  final num? pageNumber;
  final String address;
  UtmUmsLocalsRequest({
    this.itemCount,
    this.pageNumber,
    required this.address,
  });

  factory UtmUmsLocalsRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsLocalsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsLocalsRequestToJson(this);
}
