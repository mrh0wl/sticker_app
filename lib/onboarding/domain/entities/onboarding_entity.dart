import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_entity.freezed.dart';

@freezed
class OnboardingEntity with _$OnboardingEntity {
  const factory OnboardingEntity({
    required String title,
    required String desc,
    required String image,
  }) = _OnboardingEntity;
}
