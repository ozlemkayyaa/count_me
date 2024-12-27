// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      height: (json['height'] as num?)?.toInt(),
      currentWeight: (json['currentWeight'] as num?)?.toDouble(),
      idealWeight: (json['idealWeight'] as num?)?.toDouble(),
      goal: json['goal'] as String?,
      isActive: json['isActive'] as bool?,
      activityLevel: json['activityLevel'] == null
          ? null
          : ActivityLevel.fromJson(
              json['activityLevel'] as Map<String, dynamic>),
      healthConditions: (json['healthConditions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isPremium: json['isPremium'] as bool?,
      profilePhotoUrl: json['profilePhotoUrl'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'gender': instance.gender,
      'birthday': instance.birthday?.toIso8601String(),
      'height': instance.height,
      'currentWeight': instance.currentWeight,
      'idealWeight': instance.idealWeight,
      'goal': instance.goal,
      'isActive': instance.isActive,
      'activityLevel': instance.activityLevel,
      'healthConditions': instance.healthConditions,
      'isPremium': instance.isPremium,
      'profilePhotoUrl': instance.profilePhotoUrl,
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
