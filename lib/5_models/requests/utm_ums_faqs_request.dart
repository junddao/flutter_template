import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../index.dart';

part 'utm_ums_faqs_request.g.dart';

@JsonSerializable()
class UtmUmsFaqsRequest extends Equatable {
  final int? itemCount;
  final int? pageNumber;
  final SortBy? sortBy;
  final SortDirection? sortDirection;
  
  const UtmUmsFaqsRequest({
    this.itemCount = kDefaultPaginationCnt,
    this.pageNumber = 1,
    this.sortBy,
    this.sortDirection,
  });

  factory UtmUmsFaqsRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsFaqsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsFaqsRequestToJson(this);

  @override
  List<Object?> get props => [itemCount, pageNumber, sortBy, sortDirection];
}
