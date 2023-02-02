// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_signin_repository_impl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GoogleSignInRepositoryImpl {
  GoogleSignIn get googleSignIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoogleSignInRepositoryImplCopyWith<GoogleSignInRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleSignInRepositoryImplCopyWith<$Res> {
  factory $GoogleSignInRepositoryImplCopyWith(GoogleSignInRepositoryImpl value,
          $Res Function(GoogleSignInRepositoryImpl) then) =
      _$GoogleSignInRepositoryImplCopyWithImpl<$Res,
          GoogleSignInRepositoryImpl>;
  @useResult
  $Res call({GoogleSignIn googleSignIn});
}

/// @nodoc
class _$GoogleSignInRepositoryImplCopyWithImpl<$Res,
        $Val extends GoogleSignInRepositoryImpl>
    implements $GoogleSignInRepositoryImplCopyWith<$Res> {
  _$GoogleSignInRepositoryImplCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? googleSignIn = null,
  }) {
    return _then(_value.copyWith(
      googleSignIn: null == googleSignIn
          ? _value.googleSignIn
          : googleSignIn // ignore: cast_nullable_to_non_nullable
              as GoogleSignIn,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GoogleSignInRepositoryImplCopyWith<$Res>
    implements $GoogleSignInRepositoryImplCopyWith<$Res> {
  factory _$$_GoogleSignInRepositoryImplCopyWith(
          _$_GoogleSignInRepositoryImpl value,
          $Res Function(_$_GoogleSignInRepositoryImpl) then) =
      __$$_GoogleSignInRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GoogleSignIn googleSignIn});
}

/// @nodoc
class __$$_GoogleSignInRepositoryImplCopyWithImpl<$Res>
    extends _$GoogleSignInRepositoryImplCopyWithImpl<$Res,
        _$_GoogleSignInRepositoryImpl>
    implements _$$_GoogleSignInRepositoryImplCopyWith<$Res> {
  __$$_GoogleSignInRepositoryImplCopyWithImpl(
      _$_GoogleSignInRepositoryImpl _value,
      $Res Function(_$_GoogleSignInRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? googleSignIn = null,
  }) {
    return _then(_$_GoogleSignInRepositoryImpl(
      googleSignIn: null == googleSignIn
          ? _value.googleSignIn
          : googleSignIn // ignore: cast_nullable_to_non_nullable
              as GoogleSignIn,
    ));
  }
}

/// @nodoc

class _$_GoogleSignInRepositoryImpl implements _GoogleSignInRepositoryImpl {
  const _$_GoogleSignInRepositoryImpl({required this.googleSignIn});

  @override
  final GoogleSignIn googleSignIn;

  @override
  String toString() {
    return 'GoogleSignInRepositoryImpl(googleSignIn: $googleSignIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoogleSignInRepositoryImpl &&
            (identical(other.googleSignIn, googleSignIn) ||
                other.googleSignIn == googleSignIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, googleSignIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoogleSignInRepositoryImplCopyWith<_$_GoogleSignInRepositoryImpl>
      get copyWith => __$$_GoogleSignInRepositoryImplCopyWithImpl<
          _$_GoogleSignInRepositoryImpl>(this, _$identity);
}

abstract class _GoogleSignInRepositoryImpl
    implements GoogleSignInRepositoryImpl {
  const factory _GoogleSignInRepositoryImpl(
          {required final GoogleSignIn googleSignIn}) =
      _$_GoogleSignInRepositoryImpl;

  @override
  GoogleSignIn get googleSignIn;
  @override
  @JsonKey(ignore: true)
  _$$_GoogleSignInRepositoryImplCopyWith<_$_GoogleSignInRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
