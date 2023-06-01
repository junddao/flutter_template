import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_uims_request.g.dart';

@JsonSerializable()
class UtmUmsUimsRequest {
  final num? itemCount;
  final num? pageNumber;
  final String? sortBy;
  final String? sortDirection;
  UtmUmsUimsRequest({
    this.itemCount,
    this.pageNumber,
    this.sortBy,
    this.sortDirection,
  });

  factory UtmUmsUimsRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsUimsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUimsRequestToJson(this);
}
