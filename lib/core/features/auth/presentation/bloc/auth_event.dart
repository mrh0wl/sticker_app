part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appUserChanged(User user) = _AppUserChanged;
  const factory AuthEvent.appLogoutRequested() = _AppLogoutRequested;
}
