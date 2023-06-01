import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_uim_status_log_response.g.dart';

@JsonSerializable()
class UtmUmsUimStatusLogResponse {
  final String status;
  final String createdAt;
  
  UtmUmsUimStatusLogResponse({
    required this.status,
    required this.createdAt,
  });

  factory UtmUmsUimStatusLogResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsUimStatusLogResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUimStatusLogResponseToJson(this);
}
