import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_finish_uim_request.g.dart';

@JsonSerializable()
class UtmUmsFinishUimRequest {
  final String pickUpAddress;

  UtmUmsFinishUimRequest({
    required this.pickUpAddress,
  });

  factory UtmUmsFinishUimRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsFinishUimRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsFinishUimRequestToJson(this);
}
