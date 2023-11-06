import 'package:auto_route/auto_route.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:natker_app/core/features/auth/presentation/bloc/cubit/login_cubit.dart';
import 'package:natker_app/core/resources/app_constants.dart';
import 'package:natker_app/core/resources/app_router.gr.dart';
import 'package:natker_app/core/services/service_locator.dart';
import 'package:natker_app/core/utilities/enums.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginButton extends StatelessWidget {
  final SocialLoginButtonType? type;
  const LoginButton({
    super.key,
    this.type,
  });

  void _onPressed(BuildContext context, LinkedAccount type) {
    locator<LoginCubit>().logIn(type: type);
    context.pushRoute(const HomeRoute());
  }

  // Convert SocialLoginButtonType to LinkedAccount
  LinkedAccount _convertTypeToLinkedAccount(SocialLoginButtonType type) {
    switch (type) {
      case SocialLoginButtonType.facebook:
        return LinkedAccount.facebook;
      case SocialLoginButtonType.google:
        return LinkedAccount.google;
      case SocialLoginButtonType.twitter:
        return LinkedAccount.twitter;
      default:
        throw Exception('Invalid type');
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
      child: type == null
          ? Center(
              child: SizedBox(
                height: 55,
                width: SizeConfig.screenW!,
                child: ElevatedButton(
                  key: const Key('loginForm_guest_raisedButton'),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return const Color(0xFF56B3CA);
                      },
                    ),
                  ),
                  onPressed: () => _onPressed(context, LinkedAccount.guest),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            IconsaxOutline.personalcard,
                            size: SizeConfig.blockH! * 8,
                          ),
                        ),
                        SizedBox(width: SizeConfig.blockH! * 6),
                        Container(
                          alignment: Alignment.center,
                          child: const Text(
                            'Sign In as Guest',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          : SocialLoginButton(
              borderRadius: 50,
              buttonType: type!,
              onPressed: () => _onPressed(
                context,
                _convertTypeToLinkedAccount(type!),
              ),
            ),
    );
  }
}
