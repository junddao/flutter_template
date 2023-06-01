import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_faq_response.g.dart';

@JsonSerializable()
class UtmUmsFaqResponse {
  String id;
  String question;
  String answer;
  DateTime updatedAt;
  DateTime createdAt;
  UtmUmsFaqResponse({
    required this.id,
    required this.question,
    required this.answer,
    required this.updatedAt,
    required this.createdAt,
  });

  factory UtmUmsFaqResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsFaqResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsFaqResponseToJson(this);
}
