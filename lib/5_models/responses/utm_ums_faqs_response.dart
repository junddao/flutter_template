import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/5_models/responses/utm_ums_faq_response.dart';

part 'utm_ums_faqs_response.g.dart';

@JsonSerializable()
class UtmUmsFaqsResponse {
  List<UtmUmsFaqResponse> faqs;
  int countOfTotal;
  UtmUmsFaqsResponse({
    required this.faqs,
    required this.countOfTotal,
  });

  factory UtmUmsFaqsResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsFaqsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsFaqsResponseToJson(this);
}
