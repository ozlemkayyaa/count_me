// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_water_intake.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyWaterIntake _$DailyWaterIntakeFromJson(Map<String, dynamic> json) {
  return _DailyWaterIntake.fromJson(json);
}

/// @nodoc
mixin _$DailyWaterIntake {
  DateTime? get date => throw _privateConstructorUsedError; // günlük
  double? get totalWater =>
      throw _privateConstructorUsedError; // günlük toplam su miktarı
  List<WaterEntry>? get waterEntries => throw _privateConstructorUsedError;

  /// Serializes this DailyWaterIntake to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyWaterIntake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyWaterIntakeCopyWith<DailyWaterIntake> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWaterIntakeCopyWith<$Res> {
  factory $DailyWaterIntakeCopyWith(
          DailyWaterIntake value, $Res Function(DailyWaterIntake) then) =
      _$DailyWaterIntakeCopyWithImpl<$Res, DailyWaterIntake>;
  @useResult
  $Res call(
      {DateTime? date, double? totalWater, List<WaterEntry>? waterEntries});
}

/// @nodoc
class _$DailyWaterIntakeCopyWithImpl<$Res, $Val extends DailyWaterIntake>
    implements $DailyWaterIntakeCopyWith<$Res> {
  _$DailyWaterIntakeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyWaterIntake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? totalWater = freezed,
    Object? waterEntries = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalWater: freezed == totalWater
          ? _value.totalWater
          : totalWater // ignore: cast_nullable_to_non_nullable
              as double?,
      waterEntries: freezed == waterEntries
          ? _value.waterEntries
          : waterEntries // ignore: cast_nullable_to_non_nullable
              as List<WaterEntry>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyWaterIntakeImplCopyWith<$Res>
    implements $DailyWaterIntakeCopyWith<$Res> {
  factory _$$DailyWaterIntakeImplCopyWith(_$DailyWaterIntakeImpl value,
          $Res Function(_$DailyWaterIntakeImpl) then) =
      __$$DailyWaterIntakeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? date, double? totalWater, List<WaterEntry>? waterEntries});
}

/// @nodoc
class __$$DailyWaterIntakeImplCopyWithImpl<$Res>
    extends _$DailyWaterIntakeCopyWithImpl<$Res, _$DailyWaterIntakeImpl>
    implements _$$DailyWaterIntakeImplCopyWith<$Res> {
  __$$DailyWaterIntakeImplCopyWithImpl(_$DailyWaterIntakeImpl _value,
      $Res Function(_$DailyWaterIntakeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyWaterIntake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? totalWater = freezed,
    Object? waterEntries = freezed,
  }) {
    return _then(_$DailyWaterIntakeImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalWater: freezed == totalWater
          ? _value.totalWater
          : totalWater // ignore: cast_nullable_to_non_nullable
              as double?,
      waterEntries: freezed == waterEntries
          ? _value._waterEntries
          : waterEntries // ignore: cast_nullable_to_non_nullable
              as List<WaterEntry>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyWaterIntakeImpl implements _DailyWaterIntake {
  const _$DailyWaterIntakeImpl(
      {this.date, this.totalWater, final List<WaterEntry>? waterEntries})
      : _waterEntries = waterEntries;

  factory _$DailyWaterIntakeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyWaterIntakeImplFromJson(json);

  @override
  final DateTime? date;
// günlük
  @override
  final double? totalWater;
// günlük toplam su miktarı
  final List<WaterEntry>? _waterEntries;
// günlük toplam su miktarı
  @override
  List<WaterEntry>? get waterEntries {
    final value = _waterEntries;
    if (value == null) return null;
    if (_waterEntries is EqualUnmodifiableListView) return _waterEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DailyWaterIntake(date: $date, totalWater: $totalWater, waterEntries: $waterEntries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyWaterIntakeImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.totalWater, totalWater) ||
                other.totalWater == totalWater) &&
            const DeepCollectionEquality()
                .equals(other._waterEntries, _waterEntries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, totalWater,
      const DeepCollectionEquality().hash(_waterEntries));

  /// Create a copy of DailyWaterIntake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyWaterIntakeImplCopyWith<_$DailyWaterIntakeImpl> get copyWith =>
      __$$DailyWaterIntakeImplCopyWithImpl<_$DailyWaterIntakeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyWaterIntakeImplToJson(
      this,
    );
  }
}

abstract class _DailyWaterIntake implements DailyWaterIntake {
  const factory _DailyWaterIntake(
      {final DateTime? date,
      final double? totalWater,
      final List<WaterEntry>? waterEntries}) = _$DailyWaterIntakeImpl;

  factory _DailyWaterIntake.fromJson(Map<String, dynamic> json) =
      _$DailyWaterIntakeImpl.fromJson;

  @override
  DateTime? get date; // günlük
  @override
  double? get totalWater; // günlük toplam su miktarı
  @override
  List<WaterEntry>? get waterEntries;

  /// Create a copy of DailyWaterIntake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyWaterIntakeImplCopyWith<_$DailyWaterIntakeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WaterEntry _$WaterEntryFromJson(Map<String, dynamic> json) {
  return _WaterEntry.fromJson(json);
}

/// @nodoc
mixin _$WaterEntry {
  DateTime? get time =>
      throw _privateConstructorUsedError; // saat olarak alınacak
  double? get amount => throw _privateConstructorUsedError;

  /// Serializes this WaterEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaterEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaterEntryCopyWith<WaterEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaterEntryCopyWith<$Res> {
  factory $WaterEntryCopyWith(
          WaterEntry value, $Res Function(WaterEntry) then) =
      _$WaterEntryCopyWithImpl<$Res, WaterEntry>;
  @useResult
  $Res call({DateTime? time, double? amount});
}

/// @nodoc
class _$WaterEntryCopyWithImpl<$Res, $Val extends WaterEntry>
    implements $WaterEntryCopyWith<$Res> {
  _$WaterEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaterEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaterEntryImplCopyWith<$Res>
    implements $WaterEntryCopyWith<$Res> {
  factory _$$WaterEntryImplCopyWith(
          _$WaterEntryImpl value, $Res Function(_$WaterEntryImpl) then) =
      __$$WaterEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? time, double? amount});
}

/// @nodoc
class __$$WaterEntryImplCopyWithImpl<$Res>
    extends _$WaterEntryCopyWithImpl<$Res, _$WaterEntryImpl>
    implements _$$WaterEntryImplCopyWith<$Res> {
  __$$WaterEntryImplCopyWithImpl(
      _$WaterEntryImpl _value, $Res Function(_$WaterEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaterEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$WaterEntryImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaterEntryImpl implements _WaterEntry {
  const _$WaterEntryImpl({this.time, this.amount});

  factory _$WaterEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaterEntryImplFromJson(json);

  @override
  final DateTime? time;
// saat olarak alınacak
  @override
  final double? amount;

  @override
  String toString() {
    return 'WaterEntry(time: $time, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaterEntryImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, amount);

  /// Create a copy of WaterEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaterEntryImplCopyWith<_$WaterEntryImpl> get copyWith =>
      __$$WaterEntryImplCopyWithImpl<_$WaterEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaterEntryImplToJson(
      this,
    );
  }
}

abstract class _WaterEntry implements WaterEntry {
  const factory _WaterEntry({final DateTime? time, final double? amount}) =
      _$WaterEntryImpl;

  factory _WaterEntry.fromJson(Map<String, dynamic> json) =
      _$WaterEntryImpl.fromJson;

  @override
  DateTime? get time; // saat olarak alınacak
  @override
  double? get amount;

  /// Create a copy of WaterEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaterEntryImplCopyWith<_$WaterEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
