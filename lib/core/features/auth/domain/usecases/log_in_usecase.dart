import 'package:natker_app/core/utilities/enums.dart';

import '../repositories/auth_repository.dart';

class LogInUseCase {
  final AuthRepository authRepository;

  LogInUseCase(this.authRepository);

  Future<void> call(LinkedAccount type) async {
    authRepository.user.listen((user) async {
      if (user.isEmpty) {
        return;
      }
      try {
        await authRepository.logIn(type: type);
      } catch (error) {
        throw Exception(error);
      }
    });
  }
}
