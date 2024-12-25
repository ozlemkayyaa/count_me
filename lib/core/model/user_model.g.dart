// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      height: (json['height'] as num?)?.toDouble(),
      currentWeight: (json['currentWeight'] as num?)?.toDouble(),
      idealWeight: (json['idealWeight'] as num?)?.toDouble(),
      goal: (json['goal'] as num?)?.toDouble(),
      status: $enumDecodeNullable(_$UserStatusEnumMap, json['status']),
      activityLevel: json['activityLevel'] == null
          ? null
          : ActivityLevel.fromJson(
              json['activityLevel'] as Map<String, dynamic>),
      healthConditions: (json['healthConditions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
      'birthday': instance.birthday?.toIso8601String(),
      'height': instance.height,
      'currentWeight': instance.currentWeight,
      'idealWeight': instance.idealWeight,
      'goal': instance.goal,
      'status': _$UserStatusEnumMap[instance.status],
      'activityLevel': instance.activityLevel,
      'healthConditions': instance.healthConditions,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

const _$UserStatusEnumMap = {
  UserStatus.inactive: 'inactive',
  UserStatus.active: 'active',
};

_$ActivityLevelImpl _$$ActivityLevelImplFromJson(Map<String, dynamic> json) =>
    _$ActivityLevelImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ActivityLevelImplToJson(_$ActivityLevelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
