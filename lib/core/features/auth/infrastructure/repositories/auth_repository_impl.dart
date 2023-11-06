import 'package:dartz/dartz.dart';
import 'package:natker_app/core/utilities/enums.dart';

import '../../data/datasources/auth_firestore_remote_datasource.dart';
import '../../data/datasources/auth_local_datasource.dart';
import '../../data/datasources/auth_remote_datasource.dart';
import '../../data/models/user_model.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/errors/exceptions.dart';
import '../../domain/errors/failures.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;
  final AuthFirestoreRemoteDataSource _firestoreRemoteDataSource;
  AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
    required AuthLocalDataSource localDataSource,
    required AuthFirestoreRemoteDataSource firestoreRemoteDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource,
        _firestoreRemoteDataSource = firestoreRemoteDataSource;

  @override
  Stream<User> get user {
    return _remoteDataSource.user.asyncMap((userModel) async {
      if (userModel == null) {
        return User.empty;
      }
      User user = userModel.toEntity();
      await _firestoreRemoteDataSource.createUser(user: user);
      _localDataSource.saveUser(user);
      return user;
    });
  }

  @override
  User get currentUser {
    return _localDataSource.getUser();
  }

  @override
  Future<bool> get isSignedIn async {
    return currentUser.isNotEmpty;
  }

  @override
  Future<Either<Failure, User>> logIn({required LinkedAccount type}) async {
    try {
      final UserModel userModel;
      switch (type) {
        case LinkedAccount.google:
          userModel = await _remoteDataSource.logInWithGoogle();
          break;
        case LinkedAccount.facebook:
          userModel = await _remoteDataSource.logInWithFacebook();
          break;
        case LinkedAccount.twitter:
          userModel = await _remoteDataSource.logInWithTwitter();
          break;
        default:
          userModel = await _remoteDataSource.logInAsGuest();
      }
      User user = userModel.toEntity();
      _localDataSource.saveUser(user);
      await _firestoreRemoteDataSource.updateUser(user: user);
      return Right(user);
    } on LinkingAccountFailure catch (e) {
      return Left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> unlinkProvider({
    required String providerId,
  }) async {
    try {
      await _remoteDataSource.unlinkProvider(providerId: providerId);
      return const Right(null);
    } on UnlinkingAccountFailure catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateProfile({
    required User user,
  }) async {
    try {
      await _remoteDataSource.updateProfile(user: user);
      await _firestoreRemoteDataSource.updateUser(user: user);
      _localDataSource.saveUser(user);
      return const Right(null);
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logOut() async {
    try {
      if (currentUser.isAnonymous) {
        _firestoreRemoteDataSource.deleteUser(currentUser.id);
      }
      _localDataSource.deleteUser();
      await _remoteDataSource.logOut();
      return const Right(null);
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteAccount() async {
    try {
      String id = (_localDataSource.getUser()).id;
      await _remoteDataSource.deleteAccount();
      _localDataSource.deleteUser();
      await _firestoreRemoteDataSource.deleteUser(id);
      return const Right(null);
    } on Exception catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
