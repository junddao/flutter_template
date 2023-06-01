import 'package:json_annotation/json_annotation.dart';

part 'data_response.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class DataResponse<T> {
  
  @JsonKey(name: 'success')
  final bool isSuccess;
  @JsonKey(name: 'timestamp')
  final int timeStamp;
  final String code;
  final String? message;
  final T? data;
  final String? dataType;

  DataResponse({
    required this.isSuccess,
    required this.timeStamp,
    required this.code,
    this.message,
    this.data,
    this.dataType,
  });

  // Interesting bits here → ----------------------------------- ↓ ↓
  factory DataResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$DataResponseFromJson<T>(json, fromJsonT);

  // And here → ------------- ↓ ↓
  Map<String, dynamic> toJson(Object Function(T) toJsonT) => _$DataResponseToJson<T>(this, toJsonT);
}
