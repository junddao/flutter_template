import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'utm_ums_solar_event_request.g.dart';

@JsonSerializable()
class UtmUmsSolarEventRequest extends Equatable {
  final double longitude;
  final double latitude;
  const UtmUmsSolarEventRequest({
    required this.longitude,
    required this.latitude,
  });

  factory UtmUmsSolarEventRequest.fromJson(Map<String, dynamic> json) => _$UtmUmsSolarEventRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsSolarEventRequestToJson(this);

  @override
  List<Object> get props => [longitude, latitude];
}
