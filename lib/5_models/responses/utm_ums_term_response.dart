import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_term_response.g.dart';

@JsonSerializable()
class UtmUmsTermResponse {
  final String id;
  final String title;
  final String content;
  final DateTime updatedAt;
  final DateTime createdAt;
  UtmUmsTermResponse({
    required this.id,
    required this.title,
    required this.content,
    required this.updatedAt,
    required this.createdAt,
  });

  factory UtmUmsTermResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsTermResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsTermResponseToJson(this);
}
