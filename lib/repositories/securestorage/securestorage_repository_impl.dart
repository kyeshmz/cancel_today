// Package imports:

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'securestorage_repository_impl.freezed.dart';

enum SecureStorageKeys {
  AUTH,
}

@freezed
class SecureStorageRepositoryImpl with _$SecureStorageRepositoryImpl {
  const factory SecureStorageRepositoryImpl({
    required FlutterSecureStorage secureStorage,
  }) = _SecureStorageRepositoryImpl;

  const SecureStorageRepositoryImpl._();

  Future<void> initialize() async {}

  Future<bool> hasLoginCredentials() async {
    try {
      return secureStorage.containsKey(key: 'auth');
    } on Exception {
      rethrow;
    }
  }

  // @override
  // Future<void> storeLoginCredentials(SecureStorageAuthModel credential) async {
  //   try {
  //     await secureStorage.write(
  //       key: 'auth',
  //       value: jsonEncode(credential),
  //     );
  //   } on Exception {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<SecureStorageAuthModel> getLoginToken() async {
  //   try {
  //     final res = await secureStorage.read(key: 'auth');

  //     if (res == null) {
  //       throw Exception('no token found');
  //     }
  //     return SecureStorageAuthModel.fromJson(
  //         jsonDecode(res) as Map<String, dynamic>);
  //   } on Exception {
  //     rethrow;
  //   }
  // }

  @override
  Future<bool> deleteLoginToken() async {
    try {
      await secureStorage.delete(key: 'auth');
      return true;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<void> deleteAll() async {
    try {
      await secureStorage.deleteAll();
    } on Exception {
      rethrow;
    }
  }
}

final secureStorageProvider = Provider((ref) {
  return const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );
});

final secureStorageRepositoryImplProvider = Provider((ref) {
  return SecureStorageRepositoryImpl(
      secureStorage: ref.watch(secureStorageProvider));
});
