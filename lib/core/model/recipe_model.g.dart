// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeModelImpl _$$RecipeModelImplFromJson(Map<String, dynamic> json) =>
    _$RecipeModelImpl(
      name: json['name'] as String?,
      calories: (json['calories'] as num?)?.toInt(),
      preparationTime: (json['preparationTime'] as num?)?.toInt(),
      imageUrl: json['imageUrl'] as String?,
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      steps: json['steps'] as String?,
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$$RecipeModelImplToJson(_$RecipeModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'calories': instance.calories,
      'preparationTime': instance.preparationTime,
      'imageUrl': instance.imageUrl,
      'ingredients': instance.ingredients,
      'steps': instance.steps,
      'isFavorite': instance.isFavorite,
    };
