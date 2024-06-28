import 'package:flutter/material.dart';

class BackgroundSun extends StatelessWidget {
  final Widget child;

  const BackgroundSun({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/SolarWardenBackground.gif',
          fit: BoxFit.cover,
        ),
        child,
      ],
    );
  }
}