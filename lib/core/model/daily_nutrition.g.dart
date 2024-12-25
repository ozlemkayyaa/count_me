// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyNutritionImpl _$$DailyNutritionImplFromJson(Map<String, dynamic> json) =>
    _$DailyNutritionImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      calories: (json['calories'] as num?)?.toDouble(),
      protein: (json['protein'] as num?)?.toDouble(),
      fat: (json['fat'] as num?)?.toDouble(),
      carbs: (json['carbs'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DailyNutritionImplToJson(
        _$DailyNutritionImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'calories': instance.calories,
      'protein': instance.protein,
      'fat': instance.fat,
      'carbs': instance.carbs,
    };
