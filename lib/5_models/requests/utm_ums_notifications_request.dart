import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/index.dart';

part 'utm_ums_notifications_request.g.dart';

@JsonSerializable()
class UtmUmsNotificationsRequest extends Equatable {
  final num? itemCount;
  final num? pageNumber;
  final SortBy? sortBy;
  final SortDirection? sortDirection;
  
  const UtmUmsNotificationsRequest({
    this.itemCount,
    this.pageNumber,
    this.sortBy,
    this.sortDirection,
  });


  factory UtmUmsNotificationsRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsNotificationsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsNotificationsRequestToJson(this);
  
  @override
  List<Object?> get props => [itemCount, pageNumber, sortBy, sortDirection];
}
