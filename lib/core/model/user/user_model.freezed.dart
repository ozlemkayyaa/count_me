// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
// Kişisel bilgiler
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  double? get currentWeight => throw _privateConstructorUsedError;
  double? get idealWeight => throw _privateConstructorUsedError;
  String? get goal =>
      throw _privateConstructorUsedError; // Kullanıcının hedefleri
  bool? get isActive =>
      throw _privateConstructorUsedError; // Kullanıcının aktifliği
  ActivityLevel? get activityLevel =>
      throw _privateConstructorUsedError; // Kullanıcının hareket etme durumu
  List<String>? get healthConditions =>
      throw _privateConstructorUsedError; // Kullanıcının sağlık problemleri
  bool? get isPremium =>
      throw _privateConstructorUsedError; // Kullanıcının premium olup olmadığı
  String? get profilePhotoUrl => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? password,
      String? name,
      String? gender,
      DateTime? birthday,
      int? height,
      double? currentWeight,
      double? idealWeight,
      String? goal,
      bool? isActive,
      ActivityLevel? activityLevel,
      List<String>? healthConditions,
      bool? isPremium,
      String? profilePhotoUrl});

  $ActivityLevelCopyWith<$Res>? get activityLevel;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? height = freezed,
    Object? currentWeight = freezed,
    Object? idealWeight = freezed,
    Object? goal = freezed,
    Object? isActive = freezed,
    Object? activityLevel = freezed,
    Object? healthConditions = freezed,
    Object? isPremium = freezed,
    Object? profilePhotoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      currentWeight: freezed == currentWeight
          ? _value.currentWeight
          : currentWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      idealWeight: freezed == idealWeight
          ? _value.idealWeight
          : idealWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      activityLevel: freezed == activityLevel
          ? _value.activityLevel
          : activityLevel // ignore: cast_nullable_to_non_nullable
              as ActivityLevel?,
      healthConditions: freezed == healthConditions
          ? _value.healthConditions
          : healthConditions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isPremium: freezed == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      profilePhotoUrl: freezed == profilePhotoUrl
          ? _value.profilePhotoUrl
          : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityLevelCopyWith<$Res>? get activityLevel {
    if (_value.activityLevel == null) {
      return null;
    }

    return $ActivityLevelCopyWith<$Res>(_value.activityLevel!, (value) {
      return _then(_value.copyWith(activityLevel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? password,
      String? name,
      String? gender,
      DateTime? birthday,
      int? height,
      double? currentWeight,
      double? idealWeight,
      String? goal,
      bool? isActive,
      ActivityLevel? activityLevel,
      List<String>? healthConditions,
      bool? isPremium,
      String? profilePhotoUrl});

  @override
  $ActivityLevelCopyWith<$Res>? get activityLevel;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? height = freezed,
    Object? currentWeight = freezed,
    Object? idealWeight = freezed,
    Object? goal = freezed,
    Object? isActive = freezed,
    Object? activityLevel = freezed,
    Object? healthConditions = freezed,
    Object? isPremium = freezed,
    Object? profilePhotoUrl = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      currentWeight: freezed == currentWeight
          ? _value.currentWeight
          : currentWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      idealWeight: freezed == idealWeight
          ? _value.idealWeight
          : idealWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      activityLevel: freezed == activityLevel
          ? _value.activityLevel
          : activityLevel // ignore: cast_nullable_to_non_nullable
              as ActivityLevel?,
      healthConditions: freezed == healthConditions
          ? _value._healthConditions
          : healthConditions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isPremium: freezed == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      profilePhotoUrl: freezed == profilePhotoUrl
          ? _value.profilePhotoUrl
          : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {this.id,
      this.email,
      this.password,
      this.name,
      this.gender,
      this.birthday,
      this.height,
      this.currentWeight,
      this.idealWeight,
      this.goal,
      this.isActive,
      this.activityLevel,
      final List<String>? healthConditions,
      this.isPremium,
      this.profilePhotoUrl})
      : _healthConditions = healthConditions;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

// Kişisel bilgiler
  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? name;
  @override
  final String? gender;
  @override
  final DateTime? birthday;
  @override
  final int? height;
  @override
  final double? currentWeight;
  @override
  final double? idealWeight;
  @override
  final String? goal;
// Kullanıcının hedefleri
  @override
  final bool? isActive;
// Kullanıcının aktifliği
  @override
  final ActivityLevel? activityLevel;
// Kullanıcının hareket etme durumu
  final List<String>? _healthConditions;
// Kullanıcının hareket etme durumu
  @override
  List<String>? get healthConditions {
    final value = _healthConditions;
    if (value == null) return null;
    if (_healthConditions is EqualUnmodifiableListView)
      return _healthConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Kullanıcının sağlık problemleri
  @override
  final bool? isPremium;
// Kullanıcının premium olup olmadığı
  @override
  final String? profilePhotoUrl;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, password: $password, name: $name, gender: $gender, birthday: $birthday, height: $height, currentWeight: $currentWeight, idealWeight: $idealWeight, goal: $goal, isActive: $isActive, activityLevel: $activityLevel, healthConditions: $healthConditions, isPremium: $isPremium, profilePhotoUrl: $profilePhotoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.currentWeight, currentWeight) ||
                other.currentWeight == currentWeight) &&
            (identical(other.idealWeight, idealWeight) ||
                other.idealWeight == idealWeight) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.activityLevel, activityLevel) ||
                other.activityLevel == activityLevel) &&
            const DeepCollectionEquality()
                .equals(other._healthConditions, _healthConditions) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.profilePhotoUrl, profilePhotoUrl) ||
                other.profilePhotoUrl == profilePhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      password,
      name,
      gender,
      birthday,
      height,
      currentWeight,
      idealWeight,
      goal,
      isActive,
      activityLevel,
      const DeepCollectionEquality().hash(_healthConditions),
      isPremium,
      profilePhotoUrl);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {final int? id,
      final String? email,
      final String? password,
      final String? name,
      final String? gender,
      final DateTime? birthday,
      final int? height,
      final double? currentWeight,
      final double? idealWeight,
      final String? goal,
      final bool? isActive,
      final ActivityLevel? activityLevel,
      final List<String>? healthConditions,
      final bool? isPremium,
      final String? profilePhotoUrl}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

// Kişisel bilgiler
  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get name;
  @override
  String? get gender;
  @override
  DateTime? get birthday;
  @override
  int? get height;
  @override
  double? get currentWeight;
  @override
  double? get idealWeight;
  @override
  String? get goal; // Kullanıcının hedefleri
  @override
  bool? get isActive; // Kullanıcının aktifliği
  @override
  ActivityLevel? get activityLevel; // Kullanıcının hareket etme durumu
  @override
  List<String>? get healthConditions; // Kullanıcının sağlık problemleri
  @override
  bool? get isPremium; // Kullanıcının premium olup olmadığı
  @override
  String? get profilePhotoUrl;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivityLevel _$ActivityLevelFromJson(Map<String, dynamic> json) {
  return _ActivityLevel.fromJson(json);
}

/// @nodoc
mixin _$ActivityLevel {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ActivityLevel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityLevelCopyWith<ActivityLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityLevelCopyWith<$Res> {
  factory $ActivityLevelCopyWith(
          ActivityLevel value, $Res Function(ActivityLevel) then) =
      _$ActivityLevelCopyWithImpl<$Res, ActivityLevel>;
  @useResult
  $Res call({String? title, String? description});
}

/// @nodoc
class _$ActivityLevelCopyWithImpl<$Res, $Val extends ActivityLevel>
    implements $ActivityLevelCopyWith<$Res> {
  _$ActivityLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityLevelImplCopyWith<$Res>
    implements $ActivityLevelCopyWith<$Res> {
  factory _$$ActivityLevelImplCopyWith(
          _$ActivityLevelImpl value, $Res Function(_$ActivityLevelImpl) then) =
      __$$ActivityLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description});
}

/// @nodoc
class __$$ActivityLevelImplCopyWithImpl<$Res>
    extends _$ActivityLevelCopyWithImpl<$Res, _$ActivityLevelImpl>
    implements _$$ActivityLevelImplCopyWith<$Res> {
  __$$ActivityLevelImplCopyWithImpl(
      _$ActivityLevelImpl _value, $Res Function(_$ActivityLevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ActivityLevelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityLevelImpl implements _ActivityLevel {
  _$ActivityLevelImpl({this.title, this.description});

  factory _$ActivityLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityLevelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'ActivityLevel(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityLevelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  /// Create a copy of ActivityLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityLevelImplCopyWith<_$ActivityLevelImpl> get copyWith =>
      __$$ActivityLevelImplCopyWithImpl<_$ActivityLevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityLevelImplToJson(
      this,
    );
  }
}

abstract class _ActivityLevel implements ActivityLevel {
  factory _ActivityLevel({final String? title, final String? description}) =
      _$ActivityLevelImpl;

  factory _ActivityLevel.fromJson(Map<String, dynamic> json) =
      _$ActivityLevelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;

  /// Create a copy of ActivityLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityLevelImplCopyWith<_$ActivityLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
