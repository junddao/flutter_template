import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_announcements_request.g.dart';

@JsonSerializable()
class UtmUmsAnnouncementsRequest extends Equatable {
  final int? itemCount;
  final int? pageNumber;

  const UtmUmsAnnouncementsRequest({
    this.itemCount,
    this.pageNumber,
  });

  factory UtmUmsAnnouncementsRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsAnnouncementsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsAnnouncementsRequestToJson(this);

  @override
  List<Object?> get props => [itemCount, pageNumber];
}
