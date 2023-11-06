import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import 'login_button.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  Widget _orDivider(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.topLeft,
                  colors: [
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).primaryColor.withAlpha(50),
                  ],
                  stops: const [0.2, 0.8],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              'or',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Flexible(
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).primaryColor.withAlpha(50),
                  ],
                  stops: const [0.2, 0.8],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoginButton(
          type: SocialLoginButtonType.google,
        ),
        const LoginButton(
          type: SocialLoginButtonType.facebook,
        ),
        const LoginButton(
          type: SocialLoginButtonType.twitter,
        ),
        _orDivider(context),
        const LoginButton(),
      ],
    );
  }
}
