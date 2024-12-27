// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weight_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeightModel _$WeightModelFromJson(Map<String, dynamic> json) {
  return _WeightModel.fromJson(json);
}

/// @nodoc
mixin _$WeightModel {
  DateTime? get date => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;

  /// Serializes this WeightModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeightModelCopyWith<WeightModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightModelCopyWith<$Res> {
  factory $WeightModelCopyWith(
          WeightModel value, $Res Function(WeightModel) then) =
      _$WeightModelCopyWithImpl<$Res, WeightModel>;
  @useResult
  $Res call({DateTime? date, double? weight});
}

/// @nodoc
class _$WeightModelCopyWithImpl<$Res, $Val extends WeightModel>
    implements $WeightModelCopyWith<$Res> {
  _$WeightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeightModelImplCopyWith<$Res>
    implements $WeightModelCopyWith<$Res> {
  factory _$$WeightModelImplCopyWith(
          _$WeightModelImpl value, $Res Function(_$WeightModelImpl) then) =
      __$$WeightModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? date, double? weight});
}

/// @nodoc
class __$$WeightModelImplCopyWithImpl<$Res>
    extends _$WeightModelCopyWithImpl<$Res, _$WeightModelImpl>
    implements _$$WeightModelImplCopyWith<$Res> {
  __$$WeightModelImplCopyWithImpl(
      _$WeightModelImpl _value, $Res Function(_$WeightModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$WeightModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeightModelImpl implements _WeightModel {
  const _$WeightModelImpl({this.date, this.weight});

  factory _$WeightModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightModelImplFromJson(json);

  @override
  final DateTime? date;
  @override
  final double? weight;

  @override
  String toString() {
    return 'WeightModel(date: $date, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, weight);

  /// Create a copy of WeightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightModelImplCopyWith<_$WeightModelImpl> get copyWith =>
      __$$WeightModelImplCopyWithImpl<_$WeightModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightModelImplToJson(
      this,
    );
  }
}

abstract class _WeightModel implements WeightModel {
  const factory _WeightModel({final DateTime? date, final double? weight}) =
      _$WeightModelImpl;

  factory _WeightModel.fromJson(Map<String, dynamic> json) =
      _$WeightModelImpl.fromJson;

  @override
  DateTime? get date;
  @override
  double? get weight;

  /// Create a copy of WeightModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeightModelImplCopyWith<_$WeightModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
