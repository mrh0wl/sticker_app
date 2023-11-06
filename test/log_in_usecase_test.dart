import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:natker_app/core/features/auth/domain/entities/user_entity.dart';
import 'package:natker_app/core/features/auth/domain/repositories/auth_repository.dart';
import 'package:natker_app/core/features/auth/domain/usecases/log_in_usecase.dart';
import 'package:natker_app/core/utilities/enums.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  group('LogInUseCase', () {
    late LogInUseCase logInUseCase;
    late MockAuthRepository mockAuthRepository;

    setUp(() {
      mockAuthRepository = MockAuthRepository();
      logInUseCase = LogInUseCase(mockAuthRepository);
    });

    test('should log in with the given account type when user is not empty',
        () async {
      // Arrange
      when(mockAuthRepository.user).thenAnswer((_) => Stream.value(
            User(
              id: 'dummy_id',
              username: 'dummy_username',
              email: 'dummy_email',
              photo: 'dummy_photo_url',
              phone: 'dummy_phone',
              linkedAccounts: [LinkedAccount.google],
            ),
          ));

      // Act
      await logInUseCase.call(LinkedAccount.google);

      // Assert
      verify(mockAuthRepository.logIn(type: LinkedAccount.google)).called(1);
    });

    test('should not log in when user is empty', () async {
      // Arrange
      when(mockAuthRepository.user).thenAnswer((_) => Stream.value(User.empty));

      // Act
      await logInUseCase.call(LinkedAccount.google);

      // Assert
      verifyNever(mockAuthRepository.logIn(type: LinkedAccount.google));
    });

    test('should throw an exception if an error occurs during login', () async {
      // Arrange
      when(mockAuthRepository.user).thenAnswer((_) => Stream.value(
            User(
              id: 'dummy_id',
              username: 'dummy_username',
              email: 'dummy_email',
              photo: 'dummy_photo_url',
              phone: 'dummy_phone',
              linkedAccounts: [LinkedAccount.google],
            ),
          ));
      when(mockAuthRepository.logIn(type: LinkedAccount.google))
          .thenThrow(Exception('Login failed'));

      // Act & Assert
      expect(() => logInUseCase.call(LinkedAccount.google), throwsException);
    });
  });
}
