import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_pilot_rule_response.g.dart';

@JsonSerializable()
class UtmUmsPilotRuleResponse {
  final String id;
  final String title;
  final String? description;
  final String imageUrl;
  final num sequence;
  final String updatedAt;
  final String createdAt;
  
  UtmUmsPilotRuleResponse({
    required this.id,
    required this.title,
    this.description,
    required this.imageUrl,
    required this.sequence,
    required this.updatedAt,
    required this.createdAt,
  });

  factory UtmUmsPilotRuleResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsPilotRuleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsPilotRuleResponseToJson(this);
}
