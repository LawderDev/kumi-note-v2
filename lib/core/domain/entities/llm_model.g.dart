// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LLMModelImpl _$$LLMModelImplFromJson(Map<String, dynamic> json) =>
    _$LLMModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      size: (json['size'] as num).toInt(),
      status: $enumDecode(_$LLMStatusEnumMap, json['status']),
      downloadedAt: json['downloadedAt'] == null
          ? null
          : DateTime.parse(json['downloadedAt'] as String),
    );

Map<String, dynamic> _$$LLMModelImplToJson(_$LLMModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'size': instance.size,
      'status': _$LLMStatusEnumMap[instance.status]!,
      'downloadedAt': instance.downloadedAt?.toIso8601String(),
    };

const _$LLMStatusEnumMap = {
  LLMStatus.notDownloaded: 'notDownloaded',
  LLMStatus.downloading: 'downloading',
  LLMStatus.ready: 'ready',
  LLMStatus.error: 'error',
};
