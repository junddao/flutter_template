import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/5_models/responses/utm_ums_pilot_rule_response.dart';

part 'utm_ums_pilot_rules_response.g.dart';

@JsonSerializable()
class UtmUmsPilotRulesResponse {
  final List<UtmUmsPilotRuleResponse> pilotRules;
  final num countOfTotal;
  
  UtmUmsPilotRulesResponse({
    required this.pilotRules,
    required this.countOfTotal,
  });

  factory UtmUmsPilotRulesResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsPilotRulesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsPilotRulesResponseToJson(this);
}
