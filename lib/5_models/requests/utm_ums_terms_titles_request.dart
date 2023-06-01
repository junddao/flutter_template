import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_terms_titles_request.g.dart';

@JsonSerializable()
class UtmUmsTermsTitlesRequest extends Equatable {
  final int? itemCount;
  final int? pageNumber;
  final String? sortBy;
  final String? sortDirection;

  const UtmUmsTermsTitlesRequest({
    this.itemCount,
    this.pageNumber,
    this.sortBy,
    this.sortDirection,
  });

  factory UtmUmsTermsTitlesRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsTermsTitlesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsTermsTitlesRequestToJson(this);

  @override
  List<Object?> get props => [itemCount, pageNumber, sortBy, sortDirection];
}
