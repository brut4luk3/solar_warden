import 'package:flutter/material.dart';
import 'package:solar_warden/translation/localization.dart';

class WhatIsOrbitingBody extends StatelessWidget {
  const WhatIsOrbitingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return SingleChildScrollView(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: localization.whatIsOrbitingBodyTextPart1 ?? 'An orbiting body refers to any celestial object that is in orbit around another object. In the context of Near-Earth Objects (NEOs), the primary orbiting body of interest is the Earth.\n\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsOrbitingBodyTextPart2 ?? 'Types of Orbiting Bodies:\n\n',
              style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextSpan(
              text: localization.whatIsOrbitingBodyTextPart3 ?? '1. Natural Satellites: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsOrbitingBodyTextPart4 ?? 'These include moons, like Earth\'s Moon, that orbit planets.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsOrbitingBodyTextPart5 ?? '2. Artificial Satellites: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsOrbitingBodyTextPart6 ?? 'These are man-made objects placed into orbit, such as the International Space Station (ISS).\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsOrbitingBodyTextPart7 ?? '3. Planets: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsOrbitingBodyTextPart8 ?? 'Planets, including Earth, orbit around the Sun.\n\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsOrbitingBodyTextPart9 ?? 'Significance of Orbiting Bodies:\n\n',
              style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextSpan(
              text: localization.whatIsOrbitingBodyTextPart10 ?? 'Understanding the orbiting bodies helps in predicting the paths of NEOs and assessing potential collision risks with Earth or other celestial objects.\n',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}