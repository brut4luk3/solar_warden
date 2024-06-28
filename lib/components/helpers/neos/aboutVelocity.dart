import 'package:flutter/material.dart';
import 'package:solar_warden/translation/localization.dart';

class AboutVelocity extends StatelessWidget {
  const AboutVelocity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return SingleChildScrollView(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: localization.aboutVelocityTextPart1 ?? 'The velocity of a Near-Earth Object (NEO) is a critical parameter for understanding its potential impact. It is typically measured in kilometers per hour (km/h).\n\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.aboutVelocityTextPart2 ?? 'Understanding Velocity:\n\n',
              style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextSpan(
              text: localization.aboutVelocityTextPart3 ?? '1. Relative Velocity: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.aboutVelocityTextPart4 ?? 'This is the speed of the NEO relative to Earth as it passes by.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.aboutVelocityTextPart5 ?? '2. High Velocity: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.aboutVelocityTextPart6 ?? 'NEOs with high velocities can cause more significant damage if they impact Earth due to the greater energy released upon impact.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.aboutVelocityTextPart7 ?? '3. Low Velocity: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.aboutVelocityTextPart8 ?? 'NEOs with lower velocities may cause less damage, but they are still dangerous and need to be monitored closely.\n\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.aboutVelocityTextPart9 ?? 'Importance of Monitoring Velocity:\n\n',
              style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextSpan(
              text: localization.aboutVelocityTextPart10 ?? 'By understanding the velocity of NEOs, scientists can better predict their paths and potential impact effects, improving planetary defense strategies.\n',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}