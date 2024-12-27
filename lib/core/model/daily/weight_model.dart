import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight_model.freezed.dart';
part 'weight_model.g.dart';

@freezed
class WeightModel with _$WeightModel {
  const factory WeightModel({
    DateTime? date,
    double? weight,
  }) = _WeightModel;

  factory WeightModel.fromJson(Map<String, dynamic> json) =>
      _$WeightModelFromJson(json);
}
