/// {@template linking_account_failure}
/// Thrown during the sign in linking account process if a failure occurs.
/// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/signInWithCredential.html
/// {@endtemplate}
class LinkingAccountFailure implements Exception {
  /// {@macro log_in_with_google_failure}
  const LinkingAccountFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  /// from a firebase authentication exception code.
  factory LinkingAccountFailure.fromCode(String code) {
    switch (code) {
      case 'account-exists-with-different-credential':
        return const LinkingAccountFailure(
          'Account exists with different credentials.',
        );
      case 'invalid-credential':
        return const LinkingAccountFailure(
          'The credential received is malformed or has expired.',
        );
      case 'operation-not-allowed':
        return const LinkingAccountFailure(
          'Operation is not allowed.  Please contact support.',
        );
      case 'user-disabled':
        return const LinkingAccountFailure(
          'This user has been disabled.',
        );
      case 'user-not-found':
        return const LinkingAccountFailure(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const LinkingAccountFailure(
          'Incorrect password, please try again.',
        );
      case 'invalid-verification-code':
        return const LinkingAccountFailure(
          'The credential verification code received is invalid.',
        );
      case 'invalid-verification-id':
        return const LinkingAccountFailure(
          'The credential verification ID received is invalid.',
        );
      case 'provider-already-linked':
        return const LinkingAccountFailure(
          'Account already linked.',
        );
      case 'sign_in_canceled':
        return const LinkingAccountFailure('Authentication canceled.');
      case 'credential-already-in-use':
        return const LinkingAccountFailure(
            'Credentials are already in use in another account.');
      default:
        return const LinkingAccountFailure();
    }
  }

  /// The associated error message.
  final String message;
}

/// {@template logout_failure}
/// Thrown during the logout process if a failure occurs.
/// {@endtemplate}
class LogOutFailure implements Exception {}

/// {@template UnlinkingAccountFailure}
/// Thrown during the unlinking account process if a failure occurs.
/// {@endtemplate}
class UnlinkingAccountFailure implements Exception {}
