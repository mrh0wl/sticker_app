import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:natker_app/core/features/auth/domain/usecases/log_out_usecase.dart';
import 'package:natker_app/core/services/service_locator.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text('Home Page'),
      ElevatedButton(
        onPressed: () {
          locator<LogOutUseCase>().call();
        },
        child: const Text('Log Out'),
      ),
    ]);
  }
}
