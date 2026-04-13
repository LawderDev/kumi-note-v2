// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPreferencesImpl _$$UserPreferencesImplFromJson(
  Map<String, dynamic> json,
) => _$UserPreferencesImpl(
  kumiTone:
      $enumDecodeNullable(_$KumiToneEnumMap, json['kumiTone']) ?? KumiTone.kumi,
  onboardingCompleted: json['onboardingCompleted'] as bool? ?? false,
);

Map<String, dynamic> _$$UserPreferencesImplToJson(
  _$UserPreferencesImpl instance,
) => <String, dynamic>{
  'kumiTone': _$KumiToneEnumMap[instance.kumiTone]!,
  'onboardingCompleted': instance.onboardingCompleted,
};

const _$KumiToneEnumMap = {
  KumiTone.kumi: 'kumi',
  KumiTone.formal: 'formal',
  KumiTone.cute: 'cute',
};
