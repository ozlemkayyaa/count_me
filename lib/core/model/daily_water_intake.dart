import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_water_intake.freezed.dart';
part 'daily_water_intake.g.dart';

@freezed
class DailyWaterIntake with _$DailyWaterIntake {
  const factory DailyWaterIntake({
    DateTime? date, // günlük
    double? totalWater, // günlük toplam su miktarı
    List<WaterEntry>? waterEntries, // saatlik olarak
  }) = _DailyWaterIntake;

  factory DailyWaterIntake.fromJson(Map<String, dynamic> json) =>
      _$DailyWaterIntakeFromJson(json);
}

@freezed
class WaterEntry with _$WaterEntry {
  const factory WaterEntry({
    DateTime? time, // saat olarak alınacak
    double? amount, // Su miktarı (ml)
  }) = _WaterEntry;

  factory WaterEntry.fromJson(Map<String, dynamic> json) =>
      _$WaterEntryFromJson(json);
}
