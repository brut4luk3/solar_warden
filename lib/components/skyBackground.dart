import 'package:flutter/material.dart';

class SkyBackground extends StatelessWidget {
  final Widget child;

  const SkyBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/skyBackground.gif',
          fit: BoxFit.cover,
        ),
        child,
      ],
    );
  }
}