import 'package:flutter/material.dart';
import 'package:solar_warden/translation/localization.dart';

class WhatIsActiveRegion extends StatelessWidget {
  const WhatIsActiveRegion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return SingleChildScrollView(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: localization.whatIsActiveRegionTextPart1 ?? 'An active region on the Sun is an area with an especially strong and complex magnetic field. These regions are often associated with sunspots, solar flares, and coronal mass ejections.\n\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsActiveRegionTextPart2 ?? 'Features of Active Regions:\n\n',
              style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextSpan(
              text: localization.whatIsActiveRegionTextPart3 ?? '1. Sunspots: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsActiveRegionTextPart4 ?? 'Sunspots are dark areas on the Sun\'s surface that are cooler than surrounding areas and are indicators of magnetic activity.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsActiveRegionTextPart5 ?? '2. Solar Flares: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsActiveRegionTextPart6 ?? 'These are sudden eruptions of energy caused by tangling, crossing, or reorganizing of magnetic field lines near sunspots.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsActiveRegionTextPart7 ?? '3. Coronal Mass Ejections (CMEs): ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsActiveRegionTextPart8 ?? 'CMEs are large expulsions of plasma and magnetic field from the Sun\'s corona. They often follow solar flares and can cause geomagnetic storms on Earth.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatIsActiveRegionTextPart9 ?? '4. Magnetic Field Complexity: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatIsActiveRegionTextPart10 ?? 'Active regions are characterized by complex magnetic field structures that can store and release vast amounts of energy.\n',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}