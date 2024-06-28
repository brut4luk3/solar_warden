import 'package:flutter/material.dart';
import 'package:solar_warden/translation/localization.dart';

class WhatIsNeo extends StatelessWidget {
  const WhatIsNeo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return SingleChildScrollView(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: localization.whatIsNeoTextPart1 ?? 'A Near-Earth Object (NEO) is any small Solar System body whose orbit brings it into proximity with Earth. These objects include asteroids and comets that could potentially collide with Earth.\n\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsNeoTextPart2 ?? 'Categories of NEOs:\n\n',
              style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextSpan(
              text: localization.whatIsNeoTextPart3 ?? '1. Near-Earth Asteroids (NEAs): ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsNeoTextPart4 ?? 'These are asteroids that have orbits that bring them close to Earth.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsNeoTextPart5 ?? '2. Near-Earth Comets (NECs): ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsNeoTextPart6 ?? 'These are comets with orbits that come close to Earth. They are less common than NEAs.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsNeoTextPart7 ?? '3. Potentially Hazardous Objects (PHOs): ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsNeoTextPart8 ?? 'These are NEOs that pose a significant risk of impacting Earth due to their size and proximity to our planet.\n',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}