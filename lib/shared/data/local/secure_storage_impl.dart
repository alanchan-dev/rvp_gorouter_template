import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rvp_gorouter_template/shared/domain/providers/secure_storage/secure_storage_repository.dart';

class SecureStorageImpl implements SecureStorageRepository {
  final _storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );

  @override
  Future<void> write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  @override
  Future<String?> read(String key) async {
    return await _storage.read(key: key);
  }

  @override
  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }
}
