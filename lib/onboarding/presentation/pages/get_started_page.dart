import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child:
                Image.asset('assets/images/get_started.gif', width: size.width),
          ),
        ],
      ),
    );
  }
}
