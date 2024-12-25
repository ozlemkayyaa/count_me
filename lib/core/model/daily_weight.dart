import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_weight.freezed.dart';
part 'daily_weight.g.dart';

@freezed
class DailyWeight with _$DailyWeight {
  const factory DailyWeight({
    DateTime? date,
    double? weight,
  }) = _DailyWeight;

  factory DailyWeight.fromJson(Map<String, dynamic> json) =>
      _$DailyWeightFromJson(json);
}
