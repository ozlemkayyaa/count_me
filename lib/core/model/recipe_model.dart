import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class RecipeModel with _$RecipeModel {
  factory RecipeModel({
    String? name,
    int? calories,
    int? preparationTime, // dk cinsinden
    String? imageUrl,
    List<String>? ingredients,
    String? steps,
    bool? isFavorite,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
