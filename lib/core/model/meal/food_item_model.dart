import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_item_model.freezed.dart';
part 'food_item_model.g.dart';

@freezed
class FoodItemModel with _$FoodItemModel {
  factory FoodItemModel({
    String? name, // Yemek adı (ör. Egg, Bread)
    double? calories, // Kalori miktarı
    double? protein, // Protein miktarı
    double? fat, // Yağ miktarı
    double? carbs, // Karbonhidrat miktarı
  }) = _FoodItemModel;

  factory FoodItemModel.fromJson(Map<String, dynamic> json) =>
      _$FoodItemModelFromJson(json);
}
