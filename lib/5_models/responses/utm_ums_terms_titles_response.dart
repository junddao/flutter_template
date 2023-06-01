import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/5_models/responses/utm_ums_term_title_response.dart';

part 'utm_ums_terms_titles_response.g.dart';

@JsonSerializable()
class UtmUmsTermsTitlesResponse {
  final List<UtmUmsTermTitleResponse> titles;
  final int countOfTotal;
  UtmUmsTermsTitlesResponse({
    required this.titles,
    required this.countOfTotal,
  });

  factory UtmUmsTermsTitlesResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsTermsTitlesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsTermsTitlesResponseToJson(this);
}
