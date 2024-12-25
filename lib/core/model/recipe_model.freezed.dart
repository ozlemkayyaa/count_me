// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  String? get name => throw _privateConstructorUsedError;
  int? get calories => throw _privateConstructorUsedError;
  int? get preparationTime =>
      throw _privateConstructorUsedError; // dk cinsinden
  String? get imageUrl => throw _privateConstructorUsedError;
  List<String>? get ingredients => throw _privateConstructorUsedError;
  String? get steps => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;

  /// Serializes this RecipeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res, RecipeModel>;
  @useResult
  $Res call(
      {String? name,
      int? calories,
      int? preparationTime,
      String? imageUrl,
      List<String>? ingredients,
      String? steps,
      bool? isFavorite});
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res, $Val extends RecipeModel>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? calories = freezed,
    Object? preparationTime = freezed,
    Object? imageUrl = freezed,
    Object? ingredients = freezed,
    Object? steps = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int?,
      preparationTime: freezed == preparationTime
          ? _value.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeModelImplCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$RecipeModelImplCopyWith(
          _$RecipeModelImpl value, $Res Function(_$RecipeModelImpl) then) =
      __$$RecipeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? calories,
      int? preparationTime,
      String? imageUrl,
      List<String>? ingredients,
      String? steps,
      bool? isFavorite});
}

/// @nodoc
class __$$RecipeModelImplCopyWithImpl<$Res>
    extends _$RecipeModelCopyWithImpl<$Res, _$RecipeModelImpl>
    implements _$$RecipeModelImplCopyWith<$Res> {
  __$$RecipeModelImplCopyWithImpl(
      _$RecipeModelImpl _value, $Res Function(_$RecipeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? calories = freezed,
    Object? preparationTime = freezed,
    Object? imageUrl = freezed,
    Object? ingredients = freezed,
    Object? steps = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$RecipeModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int?,
      preparationTime: freezed == preparationTime
          ? _value.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeModelImpl implements _RecipeModel {
  _$RecipeModelImpl(
      {this.name,
      this.calories,
      this.preparationTime,
      this.imageUrl,
      final List<String>? ingredients,
      this.steps,
      this.isFavorite})
      : _ingredients = ingredients;

  factory _$RecipeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeModelImplFromJson(json);

  @override
  final String? name;
  @override
  final int? calories;
  @override
  final int? preparationTime;
// dk cinsinden
  @override
  final String? imageUrl;
  final List<String>? _ingredients;
  @override
  List<String>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? steps;
  @override
  final bool? isFavorite;

  @override
  String toString() {
    return 'RecipeModel(name: $name, calories: $calories, preparationTime: $preparationTime, imageUrl: $imageUrl, ingredients: $ingredients, steps: $steps, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      calories,
      preparationTime,
      imageUrl,
      const DeepCollectionEquality().hash(_ingredients),
      steps,
      isFavorite);

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      __$$RecipeModelImplCopyWithImpl<_$RecipeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeModelImplToJson(
      this,
    );
  }
}

abstract class _RecipeModel implements RecipeModel {
  factory _RecipeModel(
      {final String? name,
      final int? calories,
      final int? preparationTime,
      final String? imageUrl,
      final List<String>? ingredients,
      final String? steps,
      final bool? isFavorite}) = _$RecipeModelImpl;

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$RecipeModelImpl.fromJson;

  @override
  String? get name;
  @override
  int? get calories;
  @override
  int? get preparationTime; // dk cinsinden
  @override
  String? get imageUrl;
  @override
  List<String>? get ingredients;
  @override
  String? get steps;
  @override
  bool? get isFavorite;

  /// Create a copy of RecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
