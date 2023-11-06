part of 'login_cubit.dart';

@unfreezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default('') String message,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        status: FormzSubmissionStatus.initial,
        message: '',
      );
}
