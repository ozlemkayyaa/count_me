// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_weight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyWeightImpl _$$DailyWeightImplFromJson(Map<String, dynamic> json) =>
    _$DailyWeightImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DailyWeightImplToJson(_$DailyWeightImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'weight': instance.weight,
    };
