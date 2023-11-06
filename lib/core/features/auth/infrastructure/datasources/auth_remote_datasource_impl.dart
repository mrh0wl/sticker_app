import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twitter_login/twitter_login.dart';

import '../../data/datasources/auth_remote_datasource.dart';
import '../../data/models/user_model.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/errors/exceptions.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({
    firebase_auth.FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    FacebookAuth? facebookAuth,
    TwitterLogin? twitterAuth,
  })  : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.standard(),
        _facebookAuth = facebookAuth ?? FacebookAuth.instance,
        _twitterAuth = twitterAuth ??
            TwitterLogin(
              apiKey: '<Your API Key>',
              apiSecretKey: '<Your API Secret Key>',
              redirectURI: '<Your Callback URL>',
            );
  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;
  final TwitterLogin _twitterAuth;

  @override
  Stream<UserModel?> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      if (firebaseUser == null) {
        return null;
      }
      final user = UserModel.fromFirebaseAuth(firebaseUser);
      return user;
    });
  }

  @override
  Future<UserModel> logInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        throw Exception('Inicio de sesión cancelado');
      }
      final googleAuth = await googleUser.authentication;
      final credential = firebase_auth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final firebaseUser = await _firebaseAuth.signInWithCredential(credential);
      return UserModel.fromFirebaseAuth(firebaseUser.user!);
    } on Exception {
      throw Exception('Error al iniciar sesión con Google');
    }
  }

  @override
  Future<UserModel> logInWithFacebook() async {
    try {
      final result = await _facebookAuth.login();
      if (result.status == LoginStatus.cancelled) {
        throw Exception('Inicio de sesión cancelado');
      }
      if (result.status == LoginStatus.failed) {
        throw Exception('Error al iniciar sesión con Facebook');
      }
      final credential = firebase_auth.FacebookAuthProvider.credential(
        result.accessToken!.token,
      );
      final firebaseUser = await _firebaseAuth.signInWithCredential(credential);
      return UserModel.fromFirebaseAuth(firebaseUser.user!);
    } on Exception {
      throw Exception('Error al iniciar sesión con Facebook');
    }
  }

  @override
  Future<UserModel> logInWithTwitter() async {
    try {
      final result = await _twitterAuth.login();
      if (result.status == TwitterLoginStatus.cancelledByUser) {
        throw Exception('Inicio de sesión cancelado');
      }
      if (result.status == TwitterLoginStatus.error) {
        throw Exception('Error al iniciar sesión con Twitter');
      }
      final credential = firebase_auth.TwitterAuthProvider.credential(
        accessToken: result.authToken!,
        secret: result.authTokenSecret!,
      );
      final firebaseUser = await _firebaseAuth.signInWithCredential(credential);
      return UserModel.fromFirebaseAuth(firebaseUser.user!);
    } on Exception {
      throw Exception('Error al iniciar sesión con Twitter');
    }
  }

  @override
  Future<UserModel> logInAsGuest() async {
    try {
      final firebaseUser = await _firebaseAuth.signInAnonymously();
      return UserModel.fromFirebaseAuth(firebaseUser.user!);
    } on Exception {
      throw Exception('Error al iniciar sesión como invitado');
    }
  }

  @override
  Future<void> updateProfile({required User user}) async {
    try {
      await _firebaseAuth.currentUser!.updateDisplayName(user.fullName);
      await _firebaseAuth.currentUser!.updatePhotoURL(user.photo);
    } on Exception {
      throw Exception('Error al actualizar el perfil');
    }
  }

  @override
  Future<void> unlinkProvider({required String providerId}) async {
    try {
      if (_firebaseAuth.currentUser!.providerData.length <= 1) {
        throw Exception('You cannot unlink your only sign-in method');
      }
      await _firebaseAuth.currentUser!.unlink(providerId);
    } on Exception {
      throw Exception('Error al desvincular el proveedor');
    }
  }

  @override
  Future<void> logOut() async {
    try {
      await Future.wait([
        if (_firebaseAuth.currentUser!.isAnonymous)
          _firebaseAuth.currentUser!.delete(),
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
        _facebookAuth.logOut(),
      ]);
    } on Exception {
      throw LogOutFailure();
    }
  }

  @override
  Future<void> deleteAccount() async {
    try {
      await _firebaseAuth.currentUser!.delete();
    } on Exception {
      throw Exception('Error al eliminar la cuenta');
    }
  }
}
