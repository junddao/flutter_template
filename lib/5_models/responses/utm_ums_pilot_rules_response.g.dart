// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_pilot_rules_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsPilotRulesResponse _$UtmUmsPilotRulesResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsPilotRulesResponse(
      pilotRules: (json['pilotRules'] as List<dynamic>)
          .map((e) =>
              UtmUmsPilotRuleResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      countOfTotal: json['countOfTotal'] as num,
    );

Map<String, dynamic> _$UtmUmsPilotRulesResponseToJson(
        UtmUmsPilotRulesResponse instance) =>
    <String, dynamic>{
      'pilotRules': instance.pilotRules,
      'countOfTotal': instance.countOfTotal,
    };
