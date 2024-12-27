// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FoodItemModel _$FoodItemModelFromJson(Map<String, dynamic> json) {
  return _FoodItemModel.fromJson(json);
}

/// @nodoc
mixin _$FoodItemModel {
  String? get name =>
      throw _privateConstructorUsedError; // Yemek adı (ör. Egg, Bread)
  double? get calories => throw _privateConstructorUsedError; // Kalori miktarı
  double? get protein => throw _privateConstructorUsedError; // Protein miktarı
  double? get fat => throw _privateConstructorUsedError; // Yağ miktarı
  double? get carbs => throw _privateConstructorUsedError;

  /// Serializes this FoodItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoodItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodItemModelCopyWith<FoodItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodItemModelCopyWith<$Res> {
  factory $FoodItemModelCopyWith(
          FoodItemModel value, $Res Function(FoodItemModel) then) =
      _$FoodItemModelCopyWithImpl<$Res, FoodItemModel>;
  @useResult
  $Res call(
      {String? name,
      double? calories,
      double? protein,
      double? fat,
      double? carbs});
}

/// @nodoc
class _$FoodItemModelCopyWithImpl<$Res, $Val extends FoodItemModel>
    implements $FoodItemModelCopyWith<$Res> {
  _$FoodItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? calories = freezed,
    Object? protein = freezed,
    Object? fat = freezed,
    Object? carbs = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$FoodItemModelImplCopyWith<$Res>
    implements $FoodItemModelCopyWith<$Res> {
  factory _$$FoodItemModelImplCopyWith(
          _$FoodItemModelImpl value, $Res Function(_$FoodItemModelImpl) then) =
      __$$FoodItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      double? calories,
      double? protein,
      double? fat,
      double? carbs});
}

/// @nodoc
class __$$FoodItemModelImplCopyWithImpl<$Res>
    extends _$FoodItemModelCopyWithImpl<$Res, _$FoodItemModelImpl>
    implements _$$FoodItemModelImplCopyWith<$Res> {
  __$$FoodItemModelImplCopyWithImpl(
      _$FoodItemModelImpl _value, $Res Function(_$FoodItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? calories = freezed,
    Object? protein = freezed,
    Object? fat = freezed,
    Object? carbs = freezed,
  }) {
    return _then(_$FoodItemModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$FoodItemModelImpl implements _FoodItemModel {
  _$FoodItemModelImpl(
      {this.name, this.calories, this.protein, this.fat, this.carbs});

  factory _$FoodItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodItemModelImplFromJson(json);

  @override
  final String? name;
// Yemek adı (ör. Egg, Bread)
  @override
  final double? calories;
// Kalori miktarı
  @override
  final double? protein;
// Protein miktarı
  @override
  final double? fat;
// Yağ miktarı
  @override
  final double? carbs;

  @override
  String toString() {
    return 'FoodItemModel(name: $name, calories: $calories, protein: $protein, fat: $fat, carbs: $carbs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodItemModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.carbs, carbs) || other.carbs == carbs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, calories, protein, fat, carbs);

  /// Create a copy of FoodItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodItemModelImplCopyWith<_$FoodItemModelImpl> get copyWith =>
      __$$FoodItemModelImplCopyWithImpl<_$FoodItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodItemModelImplToJson(
      this,
    );
  }
}

abstract class _FoodItemModel implements FoodItemModel {
  factory _FoodItemModel(
      {final String? name,
      final double? calories,
      final double? protein,
      final double? fat,
      final double? carbs}) = _$FoodItemModelImpl;

  factory _FoodItemModel.fromJson(Map<String, dynamic> json) =
      _$FoodItemModelImpl.fromJson;

  @override
  String? get name; // Yemek adı (ör. Egg, Bread)
  @override
  double? get calories; // Kalori miktarı
  @override
  double? get protein; // Protein miktarı
  @override
  double? get fat; // Yağ miktarı
  @override
  double? get carbs;

  /// Create a copy of FoodItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodItemModelImplCopyWith<_$FoodItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
