// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'llm_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LLMModel _$LLMModelFromJson(Map<String, dynamic> json) {
  return _LLMModel.fromJson(json);
}

/// @nodoc
mixin _$LLMModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  LLMStatus get status => throw _privateConstructorUsedError;
  DateTime? get downloadedAt => throw _privateConstructorUsedError;

  /// Serializes this LLMModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LLMModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LLMModelCopyWith<LLMModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LLMModelCopyWith<$Res> {
  factory $LLMModelCopyWith(LLMModel value, $Res Function(LLMModel) then) =
      _$LLMModelCopyWithImpl<$Res, LLMModel>;
  @useResult
  $Res call({
    String id,
    String name,
    int size,
    LLMStatus status,
    DateTime? downloadedAt,
  });
}

/// @nodoc
class _$LLMModelCopyWithImpl<$Res, $Val extends LLMModel>
    implements $LLMModelCopyWith<$Res> {
  _$LLMModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LLMModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? size = null,
    Object? status = null,
    Object? downloadedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            size: null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as LLMStatus,
            downloadedAt: freezed == downloadedAt
                ? _value.downloadedAt
                : downloadedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LLMModelImplCopyWith<$Res>
    implements $LLMModelCopyWith<$Res> {
  factory _$$LLMModelImplCopyWith(
    _$LLMModelImpl value,
    $Res Function(_$LLMModelImpl) then,
  ) = __$$LLMModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    int size,
    LLMStatus status,
    DateTime? downloadedAt,
  });
}

/// @nodoc
class __$$LLMModelImplCopyWithImpl<$Res>
    extends _$LLMModelCopyWithImpl<$Res, _$LLMModelImpl>
    implements _$$LLMModelImplCopyWith<$Res> {
  __$$LLMModelImplCopyWithImpl(
    _$LLMModelImpl _value,
    $Res Function(_$LLMModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LLMModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? size = null,
    Object? status = null,
    Object? downloadedAt = freezed,
  }) {
    return _then(
      _$LLMModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        size: null == size
            ? _value.size
            : size // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as LLMStatus,
        downloadedAt: freezed == downloadedAt
            ? _value.downloadedAt
            : downloadedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LLMModelImpl implements _LLMModel {
  const _$LLMModelImpl({
    required this.id,
    required this.name,
    required this.size,
    required this.status,
    this.downloadedAt,
  });

  factory _$LLMModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LLMModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int size;
  @override
  final LLMStatus status;
  @override
  final DateTime? downloadedAt;

  @override
  String toString() {
    return 'LLMModel(id: $id, name: $name, size: $size, status: $status, downloadedAt: $downloadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LLMModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.downloadedAt, downloadedAt) ||
                other.downloadedAt == downloadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, size, status, downloadedAt);

  /// Create a copy of LLMModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LLMModelImplCopyWith<_$LLMModelImpl> get copyWith =>
      __$$LLMModelImplCopyWithImpl<_$LLMModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LLMModelImplToJson(this);
  }
}

abstract class _LLMModel implements LLMModel {
  const factory _LLMModel({
    required final String id,
    required final String name,
    required final int size,
    required final LLMStatus status,
    final DateTime? downloadedAt,
  }) = _$LLMModelImpl;

  factory _LLMModel.fromJson(Map<String, dynamic> json) =
      _$LLMModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get size;
  @override
  LLMStatus get status;
  @override
  DateTime? get downloadedAt;

  /// Create a copy of LLMModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LLMModelImplCopyWith<_$LLMModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
