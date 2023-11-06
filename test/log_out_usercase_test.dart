import 'package:dartz/dartz.dart'; // Import the Either type if you're using Dartz
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:natker_app/core/features/auth/domain/errors/failures.dart';
import 'package:natker_app/core/features/auth/domain/repositories/auth_repository.dart';
import 'package:natker_app/core/features/auth/domain/usecases/log_out_usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  group('LogOutUseCase', () {
    late LogOutUseCase logOutUseCase;
    late MockAuthRepository mockAuthRepository;

    setUp(() {
      mockAuthRepository = MockAuthRepository();
      logOutUseCase = LogOutUseCase(mockAuthRepository);
    });

    test('should log out successfully', () async {
      // Arrange
      when(mockAuthRepository.logOut())
          .thenAnswer((_) async => const Right(null));

      // Act & Assert
      expect(() => logOutUseCase.call(), returnsNormally);
      verify(mockAuthRepository.logOut()).called(1);
    });

    test('should throw an exception if an error occurs during log out',
        () async {
      // Arrange
      when(mockAuthRepository.logOut()).thenAnswer((_) async => const Left(
            Failure(message: 'Log out failed'),
          ));

      // Act & Assert
      expect(
          () => logOutUseCase.call(), throwsA(const TypeMatcher<Exception>()));
    });
  });
}
