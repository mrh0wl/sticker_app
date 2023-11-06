import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CloudPage extends StatefulWidget {
  const CloudPage({super.key});

  @override
  State<CloudPage> createState() => _CloudPageState();
}

class _CloudPageState extends State<CloudPage> {
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
            child: Image.asset('assets/images/cloud.gif', width: size.width),
          ),
        ],
      ),
    );
  }
}
