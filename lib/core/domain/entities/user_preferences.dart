import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences.freezed.dart';
part 'user_preferences.g.dart';

enum KumiTone { kumi, formal, cute }

@freezed
class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    @Default(KumiTone.kumi) KumiTone kumiTone,
    @Default(false) bool onboardingCompleted,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);

  factory UserPreferences.defaults() => const UserPreferences();
}
