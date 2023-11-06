import '../../domain/entities/user_entity.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Stream<UserModel?> get user;
  Future<UserModel> logInWithGoogle();
  Future<UserModel> logInWithFacebook();
  Future<UserModel> logInWithTwitter();
  Future<UserModel> logInAsGuest();
  Future<void> unlinkProvider({required String providerId});
  Future<void> updateProfile({required User user});
  Future<void> logOut();
  Future<void> deleteAccount();
}
