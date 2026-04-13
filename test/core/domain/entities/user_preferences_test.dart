import 'package:flutter_test/flutter_test.dart';
import 'package:kumi_note/core/domain/entities/user_preferences.dart';

void main() {
  group('KumiTone', () {
    test('should have correct enum values', () {
      expect(KumiTone.values.length, 3);
      expect(KumiTone.values, contains(KumiTone.kumi));
      expect(KumiTone.values, contains(KumiTone.formal));
      expect(KumiTone.values, contains(KumiTone.cute));
    });
  });

  group('UserPreferences', () {
    test('should create UserPreferences with defaults', () {
      const prefs = UserPreferences();

      expect(prefs.kumiTone, KumiTone.kumi);
      expect(prefs.onboardingCompleted, false);
    });

    test('should create UserPreferences with custom values', () {
      const prefs = UserPreferences(
        kumiTone: KumiTone.cute,
        onboardingCompleted: true,
      );

      expect(prefs.kumiTone, KumiTone.cute);
      expect(prefs.onboardingCompleted, true);
    });

    test('defaults() factory should return correct defaults', () {
      final prefs = UserPreferences.defaults();

      expect(prefs.kumiTone, KumiTone.kumi);
      expect(prefs.onboardingCompleted, false);
    });

    test('copyWith should work correctly', () {
      const prefs = UserPreferences();

      final updated = prefs.copyWith(
        kumiTone: KumiTone.formal,
        onboardingCompleted: true,
      );

      expect(updated.kumiTone, KumiTone.formal);
      expect(updated.onboardingCompleted, true);
    });

    test('copyWith should preserve unmodified values', () {
      const prefs = UserPreferences(kumiTone: KumiTone.cute);

      final updated = prefs.copyWith(onboardingCompleted: true);

      expect(updated.kumiTone, KumiTone.cute);
      expect(updated.onboardingCompleted, true);
    });

    test('should have correct equality', () {
      const prefs1 = UserPreferences();
      const prefs2 = UserPreferences();
      const prefs3 = UserPreferences(kumiTone: KumiTone.formal);

      expect(prefs1, prefs2);
      expect(prefs1, isNot(prefs3));
    });

    test('should serialize to JSON correctly', () {
      const prefs = UserPreferences(
        kumiTone: KumiTone.cute,
        onboardingCompleted: true,
      );

      final json = prefs.toJson();

      expect(json['kumiTone'], 'cute');
      expect(json['onboardingCompleted'], true);
    });

    test('should deserialize from JSON correctly', () {
      const json = {'kumiTone': 'formal', 'onboardingCompleted': true};

      final prefs = UserPreferences.fromJson(json);

      expect(prefs.kumiTone, KumiTone.formal);
      expect(prefs.onboardingCompleted, true);
    });

    test('should deserialize all KumiTone values correctly', () {
      for (final tone in KumiTone.values) {
        final json = {'kumiTone': tone.name, 'onboardingCompleted': false};

        final prefs = UserPreferences.fromJson(json);
        expect(prefs.kumiTone, tone);
      }
    });

    test('should handle defaults in JSON deserialization', () {
      const json = {'kumiTone': 'kumi', 'onboardingCompleted': false};

      final prefs = UserPreferences.fromJson(json);
      expect(prefs.kumiTone, KumiTone.kumi);
      expect(prefs.onboardingCompleted, false);
    });
  });
}
