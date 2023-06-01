import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_term_title_response.g.dart';

@JsonSerializable()
class UtmUmsTermTitleResponse {
  final String id;
  final String title;
  UtmUmsTermTitleResponse({
    required this.id,
    required this.title,
  });
  
  factory UtmUmsTermTitleResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsTermTitleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsTermTitleResponseToJson(this);
}
