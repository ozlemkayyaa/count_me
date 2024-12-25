// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_nutrition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyNutrition _$DailyNutritionFromJson(Map<String, dynamic> json) {
  return _DailyNutrition.fromJson(json);
}

/// @nodoc
mixin _$DailyNutrition {
  DateTime? get date => throw _privateConstructorUsedError; // Günün tarihi
  double? get calories => throw _privateConstructorUsedError; // Toplam kalori
  double? get protein => throw _privateConstructorUsedError; // Protein oranı
  double? get fat => throw _privateConstructorUsedError; // Yağ oranı
  double? get carbs => throw _privateConstructorUsedError;

  /// Serializes this DailyNutrition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyNutrition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyNutritionCopyWith<DailyNutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyNutritionCopyWith<$Res> {
  factory $DailyNutritionCopyWith(
          DailyNutrition value, $Res Function(DailyNutrition) then) =
      _$DailyNutritionCopyWithImpl<$Res, DailyNutrition>;
  @useResult
  $Res call(
      {DateTime? date,
      double? calories,
      double? protein,
      double? fat,
      double? carbs});
}

/// @nodoc
class _$DailyNutritionCopyWithImpl<$Res, $Val extends DailyNutrition>
    implements $DailyNutritionCopyWith<$Res> {
  _$DailyNutritionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyNutrition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? calories = freezed,
    Object? protein = freezed,
    Object? fat = freezed,
    Object? carbs = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double?,
      protein: freezed == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double?,
      fat: freezed == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double?,
      carbs: freezed == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyNutritionImplCopyWith<$Res>
    implements $DailyNutritionCopyWith<$Res> {
  factory _$$DailyNutritionImplCopyWith(_$DailyNutritionImpl value,
          $Res Function(_$DailyNutritionImpl) then) =
      __$$DailyNutritionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? date,
      double? calories,
      double? protein,
      double? fat,
      double? carbs});
}

/// @nodoc
class __$$DailyNutritionImplCopyWithImpl<$Res>
    extends _$DailyNutritionCopyWithImpl<$Res, _$DailyNutritionImpl>
    implements _$$DailyNutritionImplCopyWith<$Res> {
  __$$DailyNutritionImplCopyWithImpl(
      _$DailyNutritionImpl _value, $Res Function(_$DailyNutritionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyNutrition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? calories = freezed,
    Object? protein = freezed,
    Object? fat = freezed,
    Object? carbs = freezed,
  }) {
    return _then(_$DailyNutritionImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double?,
      protein: freezed == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double?,
      fat: freezed == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double?,
      carbs: freezed == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyNutritionImpl implements _DailyNutrition {
  _$DailyNutritionImpl(
      {this.date, this.calories, this.protein, this.fat, this.carbs});

  factory _$DailyNutritionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyNutritionImplFromJson(json);

  @override
  final DateTime? date;
// Günün tarihi
  @override
  final double? calories;
// Toplam kalori
  @override
  final double? protein;
// Protein oranı
  @override
  final double? fat;
// Yağ oranı
  @override
  final double? carbs;

  @override
  String toString() {
    return 'DailyNutrition(date: $date, calories: $calories, protein: $protein, fat: $fat, carbs: $carbs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyNutritionImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.carbs, carbs) || other.carbs == carbs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, calories, protein, fat, carbs);

  /// Create a copy of DailyNutrition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyNutritionImplCopyWith<_$DailyNutritionImpl> get copyWith =>
      __$$DailyNutritionImplCopyWithImpl<_$DailyNutritionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyNutritionImplToJson(
      this,
    );
  }
}

abstract class _DailyNutrition implements DailyNutrition {
  factory _DailyNutrition(
      {final DateTime? date,
      final double? calories,
      final double? protein,
      final double? fat,
      final double? carbs}) = _$DailyNutritionImpl;

  factory _DailyNutrition.fromJson(Map<String, dynamic> json) =
      _$DailyNutritionImpl.fromJson;

  @override
  DateTime? get date; // Günün tarihi
  @override
  double? get calories; // Toplam kalori
  @override
  double? get protein; // Protein oranı
  @override
  double? get fat; // Yağ oranı
  @override
  double? get carbs;

  /// Create a copy of DailyNutrition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyNutritionImplCopyWith<_$DailyNutritionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
