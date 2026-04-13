// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'embedding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Embedding _$EmbeddingFromJson(Map<String, dynamic> json) {
  return _Embedding.fromJson(json);
}

/// @nodoc
mixin _$Embedding {
  int get id => throw _privateConstructorUsedError;
  int get noteId => throw _privateConstructorUsedError;
  List<double> get vector => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Embedding to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Embedding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbeddingCopyWith<Embedding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbeddingCopyWith<$Res> {
  factory $EmbeddingCopyWith(Embedding value, $Res Function(Embedding) then) =
      _$EmbeddingCopyWithImpl<$Res, Embedding>;
  @useResult
  $Res call({int id, int noteId, List<double> vector, DateTime createdAt});
}

/// @nodoc
class _$EmbeddingCopyWithImpl<$Res, $Val extends Embedding>
    implements $EmbeddingCopyWith<$Res> {
  _$EmbeddingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Embedding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? noteId = null,
    Object? vector = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            noteId: null == noteId
                ? _value.noteId
                : noteId // ignore: cast_nullable_to_non_nullable
                      as int,
            vector: null == vector
                ? _value.vector
                : vector // ignore: cast_nullable_to_non_nullable
                      as List<double>,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EmbeddingImplCopyWith<$Res>
    implements $EmbeddingCopyWith<$Res> {
  factory _$$EmbeddingImplCopyWith(
    _$EmbeddingImpl value,
    $Res Function(_$EmbeddingImpl) then,
  ) = __$$EmbeddingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int noteId, List<double> vector, DateTime createdAt});
}

/// @nodoc
class __$$EmbeddingImplCopyWithImpl<$Res>
    extends _$EmbeddingCopyWithImpl<$Res, _$EmbeddingImpl>
    implements _$$EmbeddingImplCopyWith<$Res> {
  __$$EmbeddingImplCopyWithImpl(
    _$EmbeddingImpl _value,
    $Res Function(_$EmbeddingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Embedding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? noteId = null,
    Object? vector = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$EmbeddingImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        noteId: null == noteId
            ? _value.noteId
            : noteId // ignore: cast_nullable_to_non_nullable
                  as int,
        vector: null == vector
            ? _value._vector
            : vector // ignore: cast_nullable_to_non_nullable
                  as List<double>,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbeddingImpl implements _Embedding {
  const _$EmbeddingImpl({
    required this.id,
    required this.noteId,
    required final List<double> vector,
    required this.createdAt,
  }) : _vector = vector;

  factory _$EmbeddingImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbeddingImplFromJson(json);

  @override
  final int id;
  @override
  final int noteId;
  final List<double> _vector;
  @override
  List<double> get vector {
    if (_vector is EqualUnmodifiableListView) return _vector;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vector);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Embedding(id: $id, noteId: $noteId, vector: $vector, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbeddingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.noteId, noteId) || other.noteId == noteId) &&
            const DeepCollectionEquality().equals(other._vector, _vector) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    noteId,
    const DeepCollectionEquality().hash(_vector),
    createdAt,
  );

  /// Create a copy of Embedding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbeddingImplCopyWith<_$EmbeddingImpl> get copyWith =>
      __$$EmbeddingImplCopyWithImpl<_$EmbeddingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbeddingImplToJson(this);
  }
}

abstract class _Embedding implements Embedding {
  const factory _Embedding({
    required final int id,
    required final int noteId,
    required final List<double> vector,
    required final DateTime createdAt,
  }) = _$EmbeddingImpl;

  factory _Embedding.fromJson(Map<String, dynamic> json) =
      _$EmbeddingImpl.fromJson;

  @override
  int get id;
  @override
  int get noteId;
  @override
  List<double> get vector;
  @override
  DateTime get createdAt;

  /// Create a copy of Embedding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbeddingImplCopyWith<_$EmbeddingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
