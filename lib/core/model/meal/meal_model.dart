import 'package:count_me/core/model/meal/food_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_model.freezed.dart';
part 'meal_model.g.dart';

@freezed
class MealModel with _$MealModel {
  factory MealModel({
    DateTime? date, // Hangi tarihte, hangi gün ne yendi
    String? name, // Öğün adı (ör. Breakfast, Lunch)
    double? totalCalories, // Öğündeki toplam kalori
    List<FoodItemModel>? foodItems, // Öğünde yenen yemekler
  }) = _MealModel;

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);
}
