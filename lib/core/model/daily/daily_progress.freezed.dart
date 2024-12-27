// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyProgress _$DailyProgressFromJson(Map<String, dynamic> json) {
  return _DailyProgress.fromJson(json);
}

/// @nodoc
mixin _$DailyProgress {
  DateTime? get date => throw _privateConstructorUsedError; // Günün tarihi
  List<MealModel>? get meals =>
      throw _privateConstructorUsedError; // Günlük öğünler
  List<DailyNutrition>? get nutritionData => throw _privateConstructorUsedError;
  List<WeightModel>? get weightData =>
      throw _privateConstructorUsedError; // Ağırlık geçmişi
  List<DailyWaterIntake>? get waterIntakeData =>
      throw _privateConstructorUsedError; // Su tüketim geçmişi
  String? get mood =>
      throw _privateConstructorUsedError; // Ruh hali (ör. happy, sad)
  bool? get isActive =>
      throw _privateConstructorUsedError; // Kullanıcı o gün aktif mi?
  int? get streakDays =>
      throw _privateConstructorUsedError; // Kaç gün üst üste devam etmiş?
  bool? get caloriesGoalMet =>
      throw _privateConstructorUsedError; // Günlük kalori hedefi karşılanmış mı?
  bool? get waterGoalMet => throw _privateConstructorUsedError;

  /// Serializes this DailyProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyProgressCopyWith<DailyProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyProgressCopyWith<$Res> {
  factory $DailyProgressCopyWith(
          DailyProgress value, $Res Function(DailyProgress) then) =
      _$DailyProgressCopyWithImpl<$Res, DailyProgress>;
  @useResult
  $Res call(
      {DateTime? date,
      List<MealModel>? meals,
      List<DailyNutrition>? nutritionData,
      List<WeightModel>? weightData,
      List<DailyWaterIntake>? waterIntakeData,
      String? mood,
      bool? isActive,
      int? streakDays,
      bool? caloriesGoalMet,
      bool? waterGoalMet});
}

/// @nodoc
class _$DailyProgressCopyWithImpl<$Res, $Val extends DailyProgress>
    implements $DailyProgressCopyWith<$Res> {
  _$DailyProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? meals = freezed,
    Object? nutritionData = freezed,
    Object? weightData = freezed,
    Object? waterIntakeData = freezed,
    Object? mood = freezed,
    Object? isActive = freezed,
    Object? streakDays = freezed,
    Object? caloriesGoalMet = freezed,
    Object? waterGoalMet = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meals: freezed == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>?,
      nutritionData: freezed == nutritionData
          ? _value.nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as List<DailyNutrition>?,
      weightData: freezed == weightData
          ? _value.weightData
          : weightData // ignore: cast_nullable_to_non_nullable
              as List<WeightModel>?,
      waterIntakeData: freezed == waterIntakeData
          ? _value.waterIntakeData
          : waterIntakeData // ignore: cast_nullable_to_non_nullable
              as List<DailyWaterIntake>?,
      mood: freezed == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      streakDays: freezed == streakDays
          ? _value.streakDays
          : streakDays // ignore: cast_nullable_to_non_nullable
              as int?,
      caloriesGoalMet: freezed == caloriesGoalMet
          ? _value.caloriesGoalMet
          : caloriesGoalMet // ignore: cast_nullable_to_non_nullable
              as bool?,
      waterGoalMet: freezed == waterGoalMet
          ? _value.waterGoalMet
          : waterGoalMet // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyProgressImplCopyWith<$Res>
    implements $DailyProgressCopyWith<$Res> {
  factory _$$DailyProgressImplCopyWith(
          _$DailyProgressImpl value, $Res Function(_$DailyProgressImpl) then) =
      __$$DailyProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? date,
      List<MealModel>? meals,
      List<DailyNutrition>? nutritionData,
      List<WeightModel>? weightData,
      List<DailyWaterIntake>? waterIntakeData,
      String? mood,
      bool? isActive,
      int? streakDays,
      bool? caloriesGoalMet,
      bool? waterGoalMet});
}

/// @nodoc
class __$$DailyProgressImplCopyWithImpl<$Res>
    extends _$DailyProgressCopyWithImpl<$Res, _$DailyProgressImpl>
    implements _$$DailyProgressImplCopyWith<$Res> {
  __$$DailyProgressImplCopyWithImpl(
      _$DailyProgressImpl _value, $Res Function(_$DailyProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? meals = freezed,
    Object? nutritionData = freezed,
    Object? weightData = freezed,
    Object? waterIntakeData = freezed,
    Object? mood = freezed,
    Object? isActive = freezed,
    Object? streakDays = freezed,
    Object? caloriesGoalMet = freezed,
    Object? waterGoalMet = freezed,
  }) {
    return _then(_$DailyProgressImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meals: freezed == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>?,
      nutritionData: freezed == nutritionData
          ? _value._nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as List<DailyNutrition>?,
      weightData: freezed == weightData
          ? _value._weightData
          : weightData // ignore: cast_nullable_to_non_nullable
              as List<WeightModel>?,
      waterIntakeData: freezed == waterIntakeData
          ? _value._waterIntakeData
          : waterIntakeData // ignore: cast_nullable_to_non_nullable
              as List<DailyWaterIntake>?,
      mood: freezed == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      streakDays: freezed == streakDays
          ? _value.streakDays
          : streakDays // ignore: cast_nullable_to_non_nullable
              as int?,
      caloriesGoalMet: freezed == caloriesGoalMet
          ? _value.caloriesGoalMet
          : caloriesGoalMet // ignore: cast_nullable_to_non_nullable
              as bool?,
      waterGoalMet: freezed == waterGoalMet
          ? _value.waterGoalMet
          : waterGoalMet // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyProgressImpl implements _DailyProgress {
  _$DailyProgressImpl(
      {this.date,
      final List<MealModel>? meals,
      final List<DailyNutrition>? nutritionData,
      final List<WeightModel>? weightData,
      final List<DailyWaterIntake>? waterIntakeData,
      this.mood,
      this.isActive,
      this.streakDays,
      this.caloriesGoalMet,
      this.waterGoalMet})
      : _meals = meals,
        _nutritionData = nutritionData,
        _weightData = weightData,
        _waterIntakeData = waterIntakeData;

  factory _$DailyProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyProgressImplFromJson(json);

  @override
  final DateTime? date;
// Günün tarihi
  final List<MealModel>? _meals;
// Günün tarihi
  @override
  List<MealModel>? get meals {
    final value = _meals;
    if (value == null) return null;
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Günlük öğünler
  final List<DailyNutrition>? _nutritionData;
// Günlük öğünler
  @override
  List<DailyNutrition>? get nutritionData {
    final value = _nutritionData;
    if (value == null) return null;
    if (_nutritionData is EqualUnmodifiableListView) return _nutritionData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WeightModel>? _weightData;
  @override
  List<WeightModel>? get weightData {
    final value = _weightData;
    if (value == null) return null;
    if (_weightData is EqualUnmodifiableListView) return _weightData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Ağırlık geçmişi
  final List<DailyWaterIntake>? _waterIntakeData;
// Ağırlık geçmişi
  @override
  List<DailyWaterIntake>? get waterIntakeData {
    final value = _waterIntakeData;
    if (value == null) return null;
    if (_waterIntakeData is EqualUnmodifiableListView) return _waterIntakeData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Su tüketim geçmişi
  @override
  final String? mood;
// Ruh hali (ör. happy, sad)
  @override
  final bool? isActive;
// Kullanıcı o gün aktif mi?
  @override
  final int? streakDays;
// Kaç gün üst üste devam etmiş?
  @override
  final bool? caloriesGoalMet;
// Günlük kalori hedefi karşılanmış mı?
  @override
  final bool? waterGoalMet;

  @override
  String toString() {
    return 'DailyProgress(date: $date, meals: $meals, nutritionData: $nutritionData, weightData: $weightData, waterIntakeData: $waterIntakeData, mood: $mood, isActive: $isActive, streakDays: $streakDays, caloriesGoalMet: $caloriesGoalMet, waterGoalMet: $waterGoalMet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyProgressImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._meals, _meals) &&
            const DeepCollectionEquality()
                .equals(other._nutritionData, _nutritionData) &&
            const DeepCollectionEquality()
                .equals(other._weightData, _weightData) &&
            const DeepCollectionEquality()
                .equals(other._waterIntakeData, _waterIntakeData) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.streakDays, streakDays) ||
                other.streakDays == streakDays) &&
            (identical(other.caloriesGoalMet, caloriesGoalMet) ||
                other.caloriesGoalMet == caloriesGoalMet) &&
            (identical(other.waterGoalMet, waterGoalMet) ||
                other.waterGoalMet == waterGoalMet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      const DeepCollectionEquality().hash(_meals),
      const DeepCollectionEquality().hash(_nutritionData),
      const DeepCollectionEquality().hash(_weightData),
      const DeepCollectionEquality().hash(_waterIntakeData),
      mood,
      isActive,
      streakDays,
      caloriesGoalMet,
      waterGoalMet);

  /// Create a copy of DailyProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyProgressImplCopyWith<_$DailyProgressImpl> get copyWith =>
      __$$DailyProgressImplCopyWithImpl<_$DailyProgressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyProgressImplToJson(
      this,
    );
  }
}

abstract class _DailyProgress implements DailyProgress {
  factory _DailyProgress(
      {final DateTime? date,
      final List<MealModel>? meals,
      final List<DailyNutrition>? nutritionData,
      final List<WeightModel>? weightData,
      final List<DailyWaterIntake>? waterIntakeData,
      final String? mood,
      final bool? isActive,
      final int? streakDays,
      final bool? caloriesGoalMet,
      final bool? waterGoalMet}) = _$DailyProgressImpl;

  factory _DailyProgress.fromJson(Map<String, dynamic> json) =
      _$DailyProgressImpl.fromJson;

  @override
  DateTime? get date; // Günün tarihi
  @override
  List<MealModel>? get meals; // Günlük öğünler
  @override
  List<DailyNutrition>? get nutritionData;
  @override
  List<WeightModel>? get weightData; // Ağırlık geçmişi
  @override
  List<DailyWaterIntake>? get waterIntakeData; // Su tüketim geçmişi
  @override
  String? get mood; // Ruh hali (ör. happy, sad)
  @override
  bool? get isActive; // Kullanıcı o gün aktif mi?
  @override
  int? get streakDays; // Kaç gün üst üste devam etmiş?
  @override
  bool? get caloriesGoalMet; // Günlük kalori hedefi karşılanmış mı?
  @override
  bool? get waterGoalMet;

  /// Create a copy of DailyProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyProgressImplCopyWith<_$DailyProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
