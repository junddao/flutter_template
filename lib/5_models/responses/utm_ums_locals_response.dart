import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/5_models/responses/utm_ums_local_response.dart';

part 'utm_ums_locals_response.g.dart';

@JsonSerializable()
class UtmUmsLocalsResponse {
  final List<UtmUmsLocalResponse> locals;
  final num countOfTotal;
  
  UtmUmsLocalsResponse({
    required this.locals,
    required this.countOfTotal,
  });

  factory UtmUmsLocalsResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsLocalsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsLocalsResponseToJson(this);
}
