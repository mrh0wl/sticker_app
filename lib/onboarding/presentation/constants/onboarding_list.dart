import 'package:natker_app/onboarding/domain/entities/onboarding_entity.dart';

List<OnboardingEntity> onboardingList = [
  const OnboardingEntity(
    title: 'Welcome aboard!',
    desc: 'Get ready to embark on an amazing journey. '
        'We\'re thrilled to have you on board.',
    image: 'assets/images/welcome.svg',
  ),
  const OnboardingEntity(
    title: 'Discover stickers',
    desc: 'Discover stickers from your favourite creators. '
        'You can also create your own stickers and share them with the world',
    image: 'assets/images/discover.svg',
  ),
  const OnboardingEntity(
    title: 'Share stickers',
    desc: 'Share stickers with your friends and family. '
        'You can also share stickers on your social media handles',
    image: 'assets/images/share.svg',
  ),
  const OnboardingEntity(
    title: 'Backup in cloud',
    desc: 'Your stickers are stored in the cloud. '
        'You can access them from any device if you\'re logged in',
    image: 'assets/images/cloud.svg',
  ),
  const OnboardingEntity(
    title: 'Start now',
    desc: 'It\'s time to discover what this app has to offer. '
        'Let\'s get started, shall we?',
    image: 'assets/images/get_started.svg',
  ),
];
