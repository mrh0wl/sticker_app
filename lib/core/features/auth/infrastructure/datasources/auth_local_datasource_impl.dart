import 'package:hive/hive.dart';

import '../../data/datasources/auth_local_datasource.dart';
import '../../domain/entities/user_entity.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  static const String _userKey = 'user';

  static Future<void> init() async {
    await Hive.openBox<User>(_userKey);
  }

  @override
  User getUser() {
    try {
      final userBox = Hive.box<User>(_userKey);
      return userBox.get(_userKey, defaultValue: User.empty)!;
    } catch (e) {
      throw Exception("Error al recuperar el usuario: $e");
    }
  }

  @override
  void saveUser(User user) async {
    try {
      final userBox = Hive.box<User>(_userKey);
      await userBox.put(_userKey, user);
    } catch (e) {
      throw Exception("Error al guardar el usuario: $e");
    }
  }

  @override
  void deleteUser() async {
    try {
      final userBox = Hive.box<User>(_userKey);
      await userBox.delete(_userKey);
    } catch (e) {
      throw Exception("Error al eliminar el usuario: $e");
    }
  }
}
