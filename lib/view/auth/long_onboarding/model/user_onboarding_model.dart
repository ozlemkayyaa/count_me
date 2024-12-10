class UserOnboardingModel {
  // Kullanıcının hedefleri
  String? goals;

  // Kişisel Bilgiler
  String? name;
  DateTime? birthDate;
  String? gender;
  double? height; // cm olarak
  double? currentWeight; // kg olarak
  double? targetWeight;

  // Aktivite Seviyesi
  String? activityLevel;
  String? weightLossExperience;

  // Sağlık Durumu
  List<String>? healthConcerns;

  UserOnboardingModel({
    this.goals,
    this.name,
    this.birthDate,
    this.gender,
    this.height,
    this.currentWeight,
    this.targetWeight,
    this.activityLevel,
    this.weightLossExperience,
    this.healthConcerns,
  });

  // Firebase'e göndermek için JSON'a çevirme
  Map<String, dynamic> toJson() => {
        'goals': goals,
        'name': name,
        'birthDate': birthDate?.toIso8601String(),
        'gender': gender,
        'height': height,
        'currentWeight': currentWeight,
        'targetWeight': targetWeight,
        'activityLevel': activityLevel,
        'weightLossExperience': weightLossExperience,
        'healthConcerns': healthConcerns,
      };

  UserOnboardingModel copyWith({
    String? goals,
    String? name,
    DateTime? birthDate,
    String? gender,
    double? height,
    double? currentWeight,
    double? targetWeight,
    String? activityLevel,
    String? weightLossExperience,
    List<String>? healthConcerns,
  }) {
    return UserOnboardingModel(
      goals: goals ?? this.goals,
      name: name ?? this.name,
      birthDate: birthDate ?? this.birthDate,
      gender: gender ?? this.gender,
      height: height ?? this.height,
      currentWeight: currentWeight ?? this.currentWeight,
      targetWeight: targetWeight ?? this.targetWeight,
      activityLevel: activityLevel ?? this.activityLevel,
      weightLossExperience: weightLossExperience ?? this.weightLossExperience,
      healthConcerns: healthConcerns ?? this.healthConcerns,
    );
  }
}
