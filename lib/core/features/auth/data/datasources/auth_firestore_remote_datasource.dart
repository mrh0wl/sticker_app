import '../../domain/entities/user_entity.dart';

abstract class AuthFirestoreRemoteDataSource {
  Future<void> createUser({required User user});

  /// {@template validateUsername}
  /// Validates if the username is available
  ///
  /// If no username is provided, it will auto-generate one
  ///
  /// If the username is available, it will return true
  /// Otherwise, it will return false
  /// {@endtemplate}
  Future<bool> validateUsername({required String username});
  Future<void> updateUser({required User user});
  Future<void> deleteUser(String id);
}
