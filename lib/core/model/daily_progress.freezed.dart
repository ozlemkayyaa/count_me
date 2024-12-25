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
  DateTime? get date => throw _privateConstructorUsedError;
  List<DailyNutrition>? get nutritionData => throw _privateConstructorUsedError;
  List<DailyWeight>? get weightData => throw _privateConstructorUsedError;
  List<DailyWaterIntake>? get waterIntakeData =>
      throw _privateConstructorUsedError;
  Map<String, double>? get mealCalories =>
      throw _privateConstructorUsedError; // breakfast, lunch, vb.
  String? get mood =>
      throw _privateConstructorUsedError; // optional: happy, sad, etc.
  bool? get isActive => throw _privateConstructorUsedError;
  int? get streakDays => throw _privateConstructorUsedError;

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
      List<DailyNutrition>? nutritionData,
      List<DailyWeight>? weightData,
      List<DailyWaterIntake>? waterIntakeData,
      Map<String, double>? mealCalories,
      String? mood,
      bool? isActive,
      int? streakDays});
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
    Object? nutritionData = freezed,
    Object? weightData = freezed,
    Object? waterIntakeData = freezed,
    Object? mealCalories = freezed,
    Object? mood = freezed,
    Object? isActive = freezed,
    Object? streakDays = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nutritionData: freezed == nutritionData
          ? _value.nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as List<DailyNutrition>?,
      weightData: freezed == weightData
          ? _value.weightData
          : weightData // ignore: cast_nullable_to_non_nullable
              as List<DailyWeight>?,
      waterIntakeData: freezed == waterIntakeData
          ? _value.waterIntakeData
          : waterIntakeData // ignore: cast_nullable_to_non_nullable
              as List<DailyWaterIntake>?,
      mealCalories: freezed == mealCalories
          ? _value.mealCalories
          : mealCalories // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
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
      List<DailyNutrition>? nutritionData,
      List<DailyWeight>? weightData,
      List<DailyWaterIntake>? waterIntakeData,
      Map<String, double>? mealCalories,
      String? mood,
      bool? isActive,
      int? streakDays});
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
    Object? nutritionData = freezed,
    Object? weightData = freezed,
    Object? waterIntakeData = freezed,
    Object? mealCalories = freezed,
    Object? mood = freezed,
    Object? isActive = freezed,
    Object? streakDays = freezed,
  }) {
    return _then(_$DailyProgressImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nutritionData: freezed == nutritionData
          ? _value._nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as List<DailyNutrition>?,
      weightData: freezed == weightData
          ? _value._weightData
          : weightData // ignore: cast_nullable_to_non_nullable
              as List<DailyWeight>?,
      waterIntakeData: freezed == waterIntakeData
          ? _value._waterIntakeData
          : waterIntakeData // ignore: cast_nullable_to_non_nullable
              as List<DailyWaterIntake>?,
      mealCalories: freezed == mealCalories
          ? _value._mealCalories
          : mealCalories // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyProgressImpl implements _DailyProgress {
  _$DailyProgressImpl(
      {this.date,
      final List<DailyNutrition>? nutritionData,
      final List<DailyWeight>? weightData,
      final List<DailyWaterIntake>? waterIntakeData,
      final Map<String, double>? mealCalories,
      this.mood,
      this.isActive,
      this.streakDays})
      : _nutritionData = nutritionData,
        _weightData = weightData,
        _waterIntakeData = waterIntakeData,
        _mealCalories = mealCalories;

  factory _$DailyProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyProgressImplFromJson(json);

  @override
  final DateTime? date;
  final List<DailyNutrition>? _nutritionData;
  @override
  List<DailyNutrition>? get nutritionData {
    final value = _nutritionData;
    if (value == null) return null;
    if (_nutritionData is EqualUnmodifiableListView) return _nutritionData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DailyWeight>? _weightData;
  @override
  List<DailyWeight>? get weightData {
    final value = _weightData;
    if (value == null) return null;
    if (_weightData is EqualUnmodifiableListView) return _weightData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DailyWaterIntake>? _waterIntakeData;
  @override
  List<DailyWaterIntake>? get waterIntakeData {
    final value = _waterIntakeData;
    if (value == null) return null;
    if (_waterIntakeData is EqualUnmodifiableListView) return _waterIntakeData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, double>? _mealCalories;
  @override
  Map<String, double>? get mealCalories {
    final value = _mealCalories;
    if (value == null) return null;
    if (_mealCalories is EqualUnmodifiableMapView) return _mealCalories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// breakfast, lunch, vb.
  @override
  final String? mood;
// optional: happy, sad, etc.
  @override
  final bool? isActive;
  @override
  final int? streakDays;

  @override
  String toString() {
    return 'DailyProgress(date: $date, nutritionData: $nutritionData, weightData: $weightData, waterIntakeData: $waterIntakeData, mealCalories: $mealCalories, mood: $mood, isActive: $isActive, streakDays: $streakDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyProgressImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._nutritionData, _nutritionData) &&
            const DeepCollectionEquality()
                .equals(other._weightData, _weightData) &&
            const DeepCollectionEquality()
                .equals(other._waterIntakeData, _waterIntakeData) &&
            const DeepCollectionEquality()
                .equals(other._mealCalories, _mealCalories) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.streakDays, streakDays) ||
                other.streakDays == streakDays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      const DeepCollectionEquality().hash(_nutritionData),
      const DeepCollectionEquality().hash(_weightData),
      const DeepCollectionEquality().hash(_waterIntakeData),
      const DeepCollectionEquality().hash(_mealCalories),
      mood,
      isActive,
      streakDays);

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
      final List<DailyNutrition>? nutritionData,
      final List<DailyWeight>? weightData,
      final List<DailyWaterIntake>? waterIntakeData,
      final Map<String, double>? mealCalories,
      final String? mood,
      final bool? isActive,
      final int? streakDays}) = _$DailyProgressImpl;

  factory _DailyProgress.fromJson(Map<String, dynamic> json) =
      _$DailyProgressImpl.fromJson;

  @override
  DateTime? get date;
  @override
  List<DailyNutrition>? get nutritionData;
  @override
  List<DailyWeight>? get weightData;
  @override
  List<DailyWaterIntake>? get waterIntakeData;
  @override
  Map<String, double>? get mealCalories; // breakfast, lunch, vb.
  @override
  String? get mood; // optional: happy, sad, etc.
  @override
  bool? get isActive;
  @override
  int? get streakDays;

  /// Create a copy of DailyProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyProgressImplCopyWith<_$DailyProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
