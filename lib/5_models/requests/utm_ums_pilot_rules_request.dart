import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/index.dart';

part 'utm_ums_pilot_rules_request.g.dart';

@JsonSerializable()
class UtmUmsPilotRulesRequest extends Equatable {
  final num? itemCount;
  final num? pageNumber;
  final SortBy? sortBy;
  final SortDirection? sortDirection;
  
  const UtmUmsPilotRulesRequest({
    this.itemCount,
    this.pageNumber,
    this.sortBy,
    this.sortDirection,
  });

  factory UtmUmsPilotRulesRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsPilotRulesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsPilotRulesRequestToJson(this);

  @override
  List<Object?> get props => [itemCount, pageNumber, sortBy, sortDirection];
}
