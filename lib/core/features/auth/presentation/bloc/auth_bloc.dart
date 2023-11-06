import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required AuthRepository repo})
      : _authRepository = repo,
        super(
          repo.currentUser.isNotEmpty
              ? AuthState.authenticated(repo.currentUser)
              : const AuthState.unauthenticated(),
        ) {
    _userSubscription = _authRepository.user.listen(
      (user) async => add(_AppUserChanged(user)),
    );
    on<_AppUserChanged>(_onUserChanged);
    on<_AppLogoutRequested>(_onLogoutRequested);
  }

  final AuthRepository _authRepository;
  late final StreamSubscription<User> _userSubscription;

  void _onUserChanged(_AppUserChanged event, Emitter<AuthState> emit) {
    emit(
      event.user.isNotEmpty
          ? AuthState.authenticated(event.user)
          : const AuthState.unauthenticated(),
    );
  }

  void _onLogoutRequested(_AppLogoutRequested event, Emitter<AuthState> emit) {
    unawaited(_authRepository.logOut());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
