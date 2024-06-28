import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  final Widget child;

  const HomeBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/homeBackground.gif',
          fit: BoxFit.cover,
        ),
        child,
      ],
    );
  }
}