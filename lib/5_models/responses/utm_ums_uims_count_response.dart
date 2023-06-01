import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_uims_count_response.g.dart';

@JsonSerializable()
class UtmUmsUimsCountResponse {
  final num countOfTotal;
  UtmUmsUimsCountResponse({
    required this.countOfTotal,
  });

  factory UtmUmsUimsCountResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsUimsCountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUimsCountResponseToJson(this);
}
