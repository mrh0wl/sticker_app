import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:natker_app/core/utilities/enums.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

/// {@template user}
/// User Entity
///
/// [User.empty] represents an unauthenticated user.
/// {@endtemplate}
@unfreezed
class User extends HiveObject with _$User {
  User._();

  /// {@macro user}
  @HiveType(typeId: 0)
  factory User({
    @HiveField(0) @Default('') String id,
    @HiveField(1) @Default('Guest') String firstName,
    @HiveField(2) @Default('') String lastName,
    @HiveField(3) required String username,
    @HiveField(4) required String email,
    @HiveField(5) required String phone,
    @HiveField(6)
    required String photo, // Todo: Use default image from assets folder
    @HiveField(7) @Default(true) bool isAnonymous,
    @HiveField(8) final DateTime? createdAt,
    @HiveField(9) DateTime? updatedAt,
    @HiveField(10) @Default([]) List<LinkedAccount?> linkedAccounts,
  }) = _User;

  /// {@macro user}
  /// Empty user which represents an unauthenticated user.
  static User get empty => User(
        username: '',
        firstName: '',
        lastName: '',
        email: '',
        phone: '',
        photo: '',
      );

  /// {@macro user}
  /// Check if user is empty
  /// Returns true if user is empty
  bool get isEmpty => id.isEmpty;

  /// {@macro user}
  /// Check if user is not empty
  /// Returns true if user is not empty
  bool get isNotEmpty => id.isNotEmpty;

  /// {@macro user}
  /// Get user full name
  /// Returns user full name
  String get fullName => '$firstName $lastName';

  String _getInitials() {
    String fn = firstName
        .split(' ')
        .map((e) => e.split('').first.toUpperCase())
        .join('');
    String ln = lastName
        .split(' ')
        .map((e) => e.split('').first.toUpperCase())
        .join('');
    return '$fn$ln';
  }

  /// {@macro user}
  /// Get user initials
  /// Returns user initials
  String get initials => _getInitials();

  String _getFirstAndLastName() {
    String fn = firstName.split(' ').first;
    String ln = lastName.split(' ').first;
    return '$fn $ln';
  }

  /// {@macro user}
  /// Get first name and last name
  /// Returns first name and last name
  String get firstAndLastName => _getFirstAndLastName();

  /// {@macro user}
  /// Get instance of user from json
  /// Returns user instance
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  /// {@macro user}
  /// Get Firestore document from user instance
  /// Returns Firestore document without id
  Map<String, Object?> toDocument() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'email': email,
      'phone': phone,
      'photo': photo,
      'isAnonymous': isAnonymous,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'linkedAccounts': linkedAccounts,
    };
  }
}
