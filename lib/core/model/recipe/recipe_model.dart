import 'package:count_me/core/model/recipe/ingredient_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class RecipeModel with _$RecipeModel {
  factory RecipeModel({
    String? id, // Tarif için benzersiz bir ID
    String? name, // Tarif adı
    int? calories, // Tarifin toplam kalorisi
    int? preparationTime, // Hazırlık süresi (dk)
    String? imageUrl, // Tarifin resmi
    List<IngredientModel>? ingredients, // IngredientModel kullanımı
    String? steps, // Tarifin yapılış adımları
    bool? isFavorite, // Tarif favori mi?
    List<String>? categoryIds, // Tarifi ilişkilendireceğimiz kategori ID'leri
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
