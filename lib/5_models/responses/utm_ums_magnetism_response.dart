import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_magnetism_response.g.dart';

@JsonSerializable()
class UtmUmsMagnetismResponse {
  final num rawHXnT;
  final num rawHYnT;
  final num rawHZnT;
  final num rawFnT;
  final String updatedAt;
  
  UtmUmsMagnetismResponse({
    required this.rawHXnT,
    required this.rawHYnT,
    required this.rawHZnT,
    required this.rawFnT,
    required this.updatedAt,
  });

  factory UtmUmsMagnetismResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsMagnetismResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsMagnetismResponseToJson(this);
}
