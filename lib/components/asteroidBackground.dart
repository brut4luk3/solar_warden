import 'package:flutter/material.dart';

class AsteroidBackground extends StatelessWidget {
  final Widget child;

  const AsteroidBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/asteroidBackground.gif',
          fit: BoxFit.cover,
        ),
        child,
      ],
    );
  }
}