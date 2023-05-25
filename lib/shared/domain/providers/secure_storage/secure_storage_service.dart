import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rvp_gorouter_template/shared/data/local/secure_storage_impl.dart';
import 'package:rvp_gorouter_template/shared/domain/providers/secure_storage/secure_storage_repository.dart';

part 'secure_storage_service.g.dart';

@riverpod
SecureStorageRepository secureStorageService(SecureStorageServiceRef ref) =>
    SecureStorageImpl();
