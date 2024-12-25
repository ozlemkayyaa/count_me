// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_weight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyWeight _$DailyWeightFromJson(Map<String, dynamic> json) {
  return _DailyWeight.fromJson(json);
}

/// @nodoc
mixin _$DailyWeight {
  DateTime? get date => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;

  /// Serializes this DailyWeight to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyWeight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyWeightCopyWith<DailyWeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWeightCopyWith<$Res> {
  factory $DailyWeightCopyWith(
          DailyWeight value, $Res Function(DailyWeight) then) =
      _$DailyWeightCopyWithImpl<$Res, DailyWeight>;
  @useResult
  $Res call({DateTime? date, double? weight});
}

/// @nodoc
class _$DailyWeightCopyWithImpl<$Res, $Val extends DailyWeight>
    implements $DailyWeightCopyWith<$Res> {
  _$DailyWeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyWeight
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
abstract class _$$DailyWeightImplCopyWith<$Res>
    implements $DailyWeightCopyWith<$Res> {
  factory _$$DailyWeightImplCopyWith(
          _$DailyWeightImpl value, $Res Function(_$DailyWeightImpl) then) =
      __$$DailyWeightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? date, double? weight});
}

/// @nodoc
class __$$DailyWeightImplCopyWithImpl<$Res>
    extends _$DailyWeightCopyWithImpl<$Res, _$DailyWeightImpl>
    implements _$$DailyWeightImplCopyWith<$Res> {
  __$$DailyWeightImplCopyWithImpl(
      _$DailyWeightImpl _value, $Res Function(_$DailyWeightImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyWeight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$DailyWeightImpl(
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
class _$DailyWeightImpl implements _DailyWeight {
  const _$DailyWeightImpl({this.date, this.weight});

  factory _$DailyWeightImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyWeightImplFromJson(json);

  @override
  final DateTime? date;
  @override
  final double? weight;

  @override
  String toString() {
    return 'DailyWeight(date: $date, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyWeightImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, weight);

  /// Create a copy of DailyWeight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyWeightImplCopyWith<_$DailyWeightImpl> get copyWith =>
      __$$DailyWeightImplCopyWithImpl<_$DailyWeightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyWeightImplToJson(
      this,
    );
  }
}

abstract class _DailyWeight implements DailyWeight {
  const factory _DailyWeight({final DateTime? date, final double? weight}) =
      _$DailyWeightImpl;

  factory _DailyWeight.fromJson(Map<String, dynamic> json) =
      _$DailyWeightImpl.fromJson;

  @override
  DateTime? get date;
  @override
  double? get weight;

  /// Create a copy of DailyWeight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyWeightImplCopyWith<_$DailyWeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
