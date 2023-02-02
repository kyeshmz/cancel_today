import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'google_signin_repository_impl.freezed.dart';

@freezed
class GoogleSignInRepositoryImpl with _$GoogleSignInRepositoryImpl {
  const factory GoogleSignInRepositoryImpl({
    required GoogleSignIn googleSignIn,
  }) = _GoogleSignInRepositoryImpl;
}
