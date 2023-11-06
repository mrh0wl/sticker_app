import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SharePage extends StatefulWidget {
  const SharePage({super.key});

  @override
  State<SharePage> createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
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
            child: Image.asset('assets/images/share.gif', width: size.width),
          ),
        ],
      ),
    );
  }
}
