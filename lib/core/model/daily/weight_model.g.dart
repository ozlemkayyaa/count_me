// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeightModelImpl _$$WeightModelImplFromJson(Map<String, dynamic> json) =>
    _$WeightModelImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WeightModelImplToJson(_$WeightModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'weight': instance.weight,
    };
