// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsWeatherResponse _$UtmUmsWeatherResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsWeatherResponse(
      live: UtmUmsUltraShortTermLiveConditionResponse.fromJson(
          json['live'] as Map<String, dynamic>),
      forecasts: (json['forecasts'] as List<dynamic>)
          .map((e) =>
              UtmUmsUltraShortTermForecastPayloadUtmUmsUltraShortTermForecastPayload
                  .fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UtmUmsWeatherResponseToJson(
        UtmUmsWeatherResponse instance) =>
    <String, dynamic>{
      'live': instance.live,
      'forecasts': instance.forecasts,
    };
