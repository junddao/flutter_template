import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_extend_uim_period_request.g.dart';

@JsonSerializable()
class UtmUmsExtendUimPeriodRequest {
  final String issuancePeriodTo;
  
  UtmUmsExtendUimPeriodRequest({
    required this.issuancePeriodTo,
  });

  factory UtmUmsExtendUimPeriodRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsExtendUimPeriodRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsExtendUimPeriodRequestToJson(this);
}
