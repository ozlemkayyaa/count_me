// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_water_intake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyWaterIntakeImpl _$$DailyWaterIntakeImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyWaterIntakeImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      totalWater: (json['totalWater'] as num?)?.toDouble(),
      waterEntries: (json['waterEntries'] as List<dynamic>?)
          ?.map((e) => WaterEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DailyWaterIntakeImplToJson(
        _$DailyWaterIntakeImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'totalWater': instance.totalWater,
      'waterEntries': instance.waterEntries,
    };

_$WaterEntryImpl _$$WaterEntryImplFromJson(Map<String, dynamic> json) =>
    _$WaterEntryImpl(
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WaterEntryImplToJson(_$WaterEntryImpl instance) =>
    <String, dynamic>{
      'time': instance.time?.toIso8601String(),
      'amount': instance.amount,
    };
