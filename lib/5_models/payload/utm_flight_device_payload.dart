import 'package:json_annotation/json_annotation.dart';
import 'package:smatii/utils/enums.dart';

part 'utm_flight_device_payload.g.dart';

@JsonSerializable()
class UtmFlightDevicePayload {
  final UtmDeviceType type; 
  final String registrationNumber; 
  final String modelName; 
  final String manufacturer; 
  final String specification; 
  final String weight; 
  final bool isCommercial; 
  final bool isResearch; 
  final String ownerName; 
  final String ownerPhone; 
  final String? safetyCertificationNumber; 
  final String? safetyCertificationPeriodFrom; 
  final String? safetyCertificationPeriodTo; 
  final bool? isInsured; 
  final String? insuranceDescription; 
  
  UtmFlightDevicePayload({
    required this.type,
    required this.registrationNumber,
    required this.modelName,
    required this.manufacturer,
    required this.specification,
    required this.weight,
    required this.isCommercial,
    required this.isResearch,
    required this.ownerName,
    required this.ownerPhone,
    this.safetyCertificationNumber,
    this.safetyCertificationPeriodFrom,
    this.safetyCertificationPeriodTo,
    this.isInsured,
    this.insuranceDescription,
  });

  factory UtmFlightDevicePayload.fromJson(Map<String, dynamic> json) => _$UtmFlightDevicePayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmFlightDevicePayloadToJson(this);
}
