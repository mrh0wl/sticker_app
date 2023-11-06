enum Mode { light, dark }

enum UserSettingsStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == UserSettingsStatus.initial;
  bool get isLoading => this == UserSettingsStatus.loading;
  bool get isSuccess => this == UserSettingsStatus.success;
  bool get isFailure => this == UserSettingsStatus.failure;
}

enum OnboardingStatus {
  initial,
  loading,
  completed;

  bool get isInitial => this == OnboardingStatus.initial;
  bool get isLoading => this == OnboardingStatus.loading;
  bool get isCompleted => this == OnboardingStatus.completed;
}

enum LinkedAccount {
  google,
  twitter,
  facebook,
  guest;

  bool get isGoogle => this == LinkedAccount.google;
  bool get isTwitter => this == LinkedAccount.twitter;
  bool get isFacebook => this == LinkedAccount.facebook;
  bool get isGuest => this == LinkedAccount.guest;
}

enum UserStatus {
  active,
  inactive,
  banned;

  bool get isActive => this == UserStatus.active;
  bool get isInactive => this == UserStatus.inactive;
  bool get isBanned => this == UserStatus.banned;
}

enum AuthStatus {
  initial,
  authenticated,
  unauthenticated,
  loading,
  failure;

  bool get isInitial => this == AuthStatus.initial;
  bool get isAuthenticated => this == AuthStatus.authenticated;
  bool get isUnauthenticated => this == AuthStatus.unauthenticated;
  bool get isLoading => this == AuthStatus.loading;
  bool get isFailure => this == AuthStatus.failure;
}

enum SelectionSource {
  scroll,
  link,
  tab;

  bool get isScroll => this == SelectionSource.scroll;
  bool get isLink => this == SelectionSource.link;
  bool get isTab => this == SelectionSource.tab;
}
