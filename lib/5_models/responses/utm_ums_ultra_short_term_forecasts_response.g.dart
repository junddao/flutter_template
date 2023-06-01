// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_ultra_short_term_forecasts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUltraShortTermForecastsResponse
    _$UtmUmsUltraShortTermForecastsResponseFromJson(
            Map<String, dynamic> json) =>
        UtmUmsUltraShortTermForecastsResponse(
          baseDateTime: json['baseDateTime'] as String,
          baseDateString: json['baseDateString'] as String,
          baseTimeString: json['baseTimeString'] as String,
          forecasts: (json['forecasts'] as List<dynamic>)
              .map((e) =>
                  UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayload
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$UtmUmsUltraShortTermForecastsResponseToJson(
        UtmUmsUltraShortTermForecastsResponse instance) =>
    <String, dynamic>{
      'baseDateTime': instance.baseDateTime,
      'baseDateString': instance.baseDateString,
      'baseTimeString': instance.baseTimeString,
      'forecasts': instance.forecasts,
    };
