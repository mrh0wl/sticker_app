import 'package:dartz/dartz.dart';
import 'package:natker_app/core/utilities/enums.dart';

import '../entities/user_entity.dart';
import '../errors/failures.dart';

abstract class AuthRepository {
  Stream<User> get user;
  User get currentUser;
  Future<bool> get isSignedIn;
  Future<Either<Failure, User>> logIn({required LinkedAccount type});
  Future<Either<Failure, void>> logOut();
  Future<Either<Failure, void>> unlinkProvider({required String providerId});
  Future<Either<Failure, void>> updateProfile({required User user});
  Future<Either<Failure, void>> deleteAccount();
}
