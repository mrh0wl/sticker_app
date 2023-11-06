import '../repositories/auth_repository.dart';

class LogOutUseCase {
  final AuthRepository _authRepository;

  LogOutUseCase(this._authRepository);

  Future<void> call() async {
    try {
      await _authRepository.logOut();
    } catch (error) {
      throw Exception(error);
    }
  }
}
