abstract class SecureStorageRepository {
  Future<bool> hasLoginToken();
  Future<void> createLoginToken(String credential);
  Future<String> getLoginToken();
  Future<void> deleteLoginToken();
  Future<void> deleteAll();
}
