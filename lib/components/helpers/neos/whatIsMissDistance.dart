import 'package:flutter/material.dart';
import 'package:solar_warden/translation/localization.dart';

class WhatIsMissDistance extends StatelessWidget {
  const WhatIsMissDistance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return SingleChildScrollView(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: localization.whatIsMissDistanceTextPart1 ?? 'Miss distance is a measure of the closest distance that a Near-Earth Object (NEO) will approach Earth. It is a crucial metric for assessing the potential hazard of an NEO.\n\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsMissDistanceTextPart2 ?? 'Units of Measurement:\n\n',
              style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextSpan(
              text: localization.whatIsMissDistanceTextPart3 ?? '1. Astronomical Units (AU): ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsMissDistanceTextPart4 ?? '1 AU is the average distance between the Earth and the Sun, approximately 149.6 million kilometers.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsMissDistanceTextPart5 ?? '2. Lunar Distances (LD): ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsMissDistanceTextPart6 ?? '1 LD is the average distance from the Earth to the Moon, approximately 384,400 kilometers.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsMissDistanceTextPart7 ?? '3. Kilometers (km): ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsMissDistanceTextPart8 ?? 'Miss distance can also be measured in kilometers for more precision.\n\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsMissDistanceTextPart9 ?? 'Significance of Miss Distance:\n\n',
              style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextSpan(
              text: localization.whatIsMissDistanceTextPart10 ?? 'A smaller miss distance indicates a higher risk of impact. Therefore, monitoring the miss distance of NEOs is essential for planetary defense.\n',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}