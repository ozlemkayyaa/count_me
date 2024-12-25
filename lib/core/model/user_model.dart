import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

enum Gender { male, female }

enum UserStatus { inactive, active }

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    String? email,
    String? password,
    String? name,
    Gender? gender,
    DateTime? birthday,
    double? height,
    double? currentWeight,
    double? idealWeight,
    double? goal,
    UserStatus? status,
    ActivityLevel? activityLevel,
    List<String>? healthConditions,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class ActivityLevel with _$ActivityLevel {
  factory ActivityLevel({
    String? title,
    String? description,
  }) = _ActivityLevel;

  factory ActivityLevel.fromJson(Map<String, dynamic> json) =>
      _$ActivityLevelFromJson(json);
}
