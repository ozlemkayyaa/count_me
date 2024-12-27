import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    // Kişisel bilgiler
    int? id,
    String? email,
    String? password,
    String? name,
    String? gender,
    DateTime? birthday,
    int? height,
    double? currentWeight,
    double? idealWeight,
    String? goal, // Kullanıcının hedefleri
    bool? isActive, // Kullanıcının aktifliği
    ActivityLevel? activityLevel, // Kullanıcının hareket etme durumu
    List<String>? healthConditions, // Kullanıcının sağlık problemleri
    bool? isPremium, // Kullanıcının premium olup olmadığı
    String? profilePhotoUrl, // Kullanıcının profil fotoğrafı URL'si
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
