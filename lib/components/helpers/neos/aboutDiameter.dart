import 'package:flutter/material.dart';
import 'package:solar_warden/translation/localization.dart';

class AboutDiameter extends StatelessWidget {
  const AboutDiameter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return SingleChildScrollView(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: localization.aboutDiameterTextPart1 ?? 'The diameter of a Near-Earth Object (NEO) is a crucial parameter for assessing its potential impact. It is typically measured in meters (m).\n\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.aboutDiameterTextPart2 ?? 'Understanding Diameter:\n\n',
              style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextSpan(
              text: localization.aboutDiameterTextPart3 ?? '1. Size Matters: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.aboutDiameterTextPart4 ?? 'Larger NEOs have the potential to cause more significant damage due to the greater mass and energy involved in an impact.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.aboutDiameterTextPart5 ?? '2. Detection Challenges: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.aboutDiameterTextPart6 ?? 'Smaller NEOs are harder to detect and track but can still pose a threat if they enter Earth\'s atmosphere.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.aboutDiameterTextPart7 ?? '3. Impact Assessment: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.aboutDiameterTextPart8 ?? 'Knowing the diameter helps scientists estimate the potential impact effects, including crater size and energy release.\n\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.aboutDiameterTextPart9 ?? 'Significance of Diameter Measurement:\n\n',
              style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextSpan(
              text: localization.aboutDiameterTextPart10 ?? 'By measuring the diameter of NEOs, scientists can better predict their behavior and potential impact, enhancing planetary defense strategies.\n',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}