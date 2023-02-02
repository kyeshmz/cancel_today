// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'securestorage_repository_impl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SecureStorageRepositoryImpl {
  FlutterSecureStorage get secureStorage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecureStorageRepositoryImplCopyWith<SecureStorageRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecureStorageRepositoryImplCopyWith<$Res> {
  factory $SecureStorageRepositoryImplCopyWith(
          SecureStorageRepositoryImpl value,
          $Res Function(SecureStorageRepositoryImpl) then) =
      _$SecureStorageRepositoryImplCopyWithImpl<$Res,
          SecureStorageRepositoryImpl>;
  @useResult
  $Res call({FlutterSecureStorage secureStorage});
}

/// @nodoc
class _$SecureStorageRepositoryImplCopyWithImpl<$Res,
        $Val extends SecureStorageRepositoryImpl>
    implements $SecureStorageRepositoryImplCopyWith<$Res> {
  _$SecureStorageRepositoryImplCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secureStorage = null,
  }) {
    return _then(_value.copyWith(
      secureStorage: null == secureStorage
          ? _value.secureStorage
          : secureStorage // ignore: cast_nullable_to_non_nullable
              as FlutterSecureStorage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SecureStorageRepositoryImplCopyWith<$Res>
    implements $SecureStorageRepositoryImplCopyWith<$Res> {
  factory _$$_SecureStorageRepositoryImplCopyWith(
          _$_SecureStorageRepositoryImpl value,
          $Res Function(_$_SecureStorageRepositoryImpl) then) =
      __$$_SecureStorageRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlutterSecureStorage secureStorage});
}

/// @nodoc
class __$$_SecureStorageRepositoryImplCopyWithImpl<$Res>
    extends _$SecureStorageRepositoryImplCopyWithImpl<$Res,
        _$_SecureStorageRepositoryImpl>
    implements _$$_SecureStorageRepositoryImplCopyWith<$Res> {
  __$$_SecureStorageRepositoryImplCopyWithImpl(
      _$_SecureStorageRepositoryImpl _value,
      $Res Function(_$_SecureStorageRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secureStorage = null,
  }) {
    return _then(_$_SecureStorageRepositoryImpl(
      secureStorage: null == secureStorage
          ? _value.secureStorage
          : secureStorage // ignore: cast_nullable_to_non_nullable
              as FlutterSecureStorage,
    ));
  }
}

/// @nodoc

class _$_SecureStorageRepositoryImpl extends _SecureStorageRepositoryImpl {
  const _$_SecureStorageRepositoryImpl({required this.secureStorage})
      : super._();

  @override
  final FlutterSecureStorage secureStorage;

  @override
  String toString() {
    return 'SecureStorageRepositoryImpl(secureStorage: $secureStorage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecureStorageRepositoryImpl &&
            (identical(other.secureStorage, secureStorage) ||
                other.secureStorage == secureStorage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, secureStorage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecureStorageRepositoryImplCopyWith<_$_SecureStorageRepositoryImpl>
      get copyWith => __$$_SecureStorageRepositoryImplCopyWithImpl<
          _$_SecureStorageRepositoryImpl>(this, _$identity);
}

abstract class _SecureStorageRepositoryImpl
    extends SecureStorageRepositoryImpl {
  const factory _SecureStorageRepositoryImpl(
          {required final FlutterSecureStorage secureStorage}) =
      _$_SecureStorageRepositoryImpl;
  const _SecureStorageRepositoryImpl._() : super._();

  @override
  FlutterSecureStorage get secureStorage;
  @override
  @JsonKey(ignore: true)
  _$$_SecureStorageRepositoryImplCopyWith<_$_SecureStorageRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
