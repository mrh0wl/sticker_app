import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:natker_app/core/utilities/enums.dart';
import 'package:natker_app/onboarding/domain/usecases/onboarding_completed_usecases.dart';

part 'onboarding_completed_bloc.freezed.dart';
part 'onboarding_completed_event.dart';
part 'onboarding_completed_state.dart';

class OnboardingCompletedBloc
    extends Bloc<OnboardingCompletedEvent, OnboardingCompletedState> {
  OnboardingCompletedBloc({
    required CheckOnboardingStatusUseCase checkStatus,
    required CompleteOnboardingUseCase complete,
  })  : _checkOnboardingStatusUseCase = checkStatus,
        _completeOnboardingUseCase = complete,
        super(const OnboardingCompletedState()) {
    on<_IsCompleted>(_onIsCompleted);
    on<_SetCompleted>(_onSetCompleted);
  }

  final CheckOnboardingStatusUseCase _checkOnboardingStatusUseCase;
  final CompleteOnboardingUseCase _completeOnboardingUseCase;

  Future<void> _onIsCompleted(
      _IsCompleted event, Emitter<OnboardingCompletedState> emit) async {
    emit(state.copyWith(status: OnboardingStatus.initial));

    final onboardinIsCompleted = await _checkOnboardingStatusUseCase();

    if (onboardinIsCompleted) {
      emit(
        const OnboardingCompletedState(
          status: OnboardingStatus.completed,
        ),
      );
    }
  }

  Future<void> _onSetCompleted(
      _SetCompleted event, Emitter<OnboardingCompletedState> emit) async {
    if (!state.status.isCompleted) return;
    await _completeOnboardingUseCase.call();
  }
}
