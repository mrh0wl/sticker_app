import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class StreamAuthUseCase {
  final AuthRepository authRepository;

  StreamAuthUseCase(this.authRepository);

  Stream<User> call() {
    try {
      return authRepository.user;
    } catch (error) {
      throw Exception(error);
    }
  }
}
