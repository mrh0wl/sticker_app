import '../../domain/entities/user_entity.dart';

abstract class AuthLocalDataSource {
  static init() async {}
  User getUser();
  void saveUser(User user);
  void deleteUser();
}
