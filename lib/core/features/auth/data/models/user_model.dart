import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_entity.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  factory UserModel({
    @Default('') String id,
    required String username,
    required String displayName,
    required String email,
    required String phone,
    required String photo,
    required bool isAnonymous,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserModel;

  factory UserModel.fromFirebaseAuth(firebase_auth.User user) {
    return UserModel(
      id: user.uid,
      username: 'user${Random().nextInt(900000) + 100000}',
      displayName: user.displayName ?? 'Guest',
      email: user.email ?? '',
      phone: user.phoneNumber ?? '',
      photo: user.photoURL ?? '',
      isAnonymous: user.isAnonymous,
      createdAt: user.metadata.creationTime ?? DateTime.now(),
      updatedAt: user.metadata.lastSignInTime ?? DateTime.now(),
    );
  }

  User toEntity() {
    List<String> displayName = this.displayName.split(' ');
    return User(
      id: id,
      username: username,
      firstName: displayName.first,
      lastName: displayName.last,
      email: email,
      phone: phone,
      photo: photo,
      isAnonymous: isAnonymous,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
