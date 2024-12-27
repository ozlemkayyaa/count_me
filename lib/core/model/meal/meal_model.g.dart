// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealModelImpl _$$MealModelImplFromJson(Map<String, dynamic> json) =>
    _$MealModelImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      name: json['name'] as String?,
      totalCalories: (json['totalCalories'] as num?)?.toDouble(),
      foodItems: (json['foodItems'] as List<dynamic>?)
          ?.map((e) => FoodItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MealModelImplToJson(_$MealModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'name': instance.name,
      'totalCalories': instance.totalCalories,
      'foodItems': instance.foodItems,
    };
