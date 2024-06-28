import 'package:flutter/material.dart';
import 'package:solar_warden/translation/localization.dart';
import 'package:solar_warden/components/helpers/scale_indicator.dart';

class WhatIsClassTypes extends StatelessWidget {
  const WhatIsClassTypes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            localization.whatIsClassTypesTextPart1 ?? 'Solar flares are classified based on their X-ray brightness in the wavelength range 1 to 8 Angstroms. The classes are A, B, C, M, and X, with each class having a tenfold increase in energy output.\n\n',
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            localization.whatIsClassTypesTextPart2 ?? 'Classes of Solar Flares:\n\n',
            style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: localization.whatIsClassTypesTextPart3 ?? '1. Class A: ',
                  style: const TextStyle(color: Colors.white12),
                ),
                TextSpan(
                  text: localization.whatIsClassTypesTextPart4 ?? 'These are the smallest flares, barely detectable above background radiation levels.\n',
                  style: const TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: localization.whatIsClassTypesTextPart5 ?? '2. Class B: ',
                  style: const TextStyle(color: Colors.white12),
                ),
                TextSpan(
                  text: localization.whatIsClassTypesTextPart6 ?? 'These are small flares, with few noticeable effects on Earth.\n',
                  style: const TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: localization.whatIsClassTypesTextPart7 ?? '3. Class C: ',
                  style: const TextStyle(color: Colors.white12),
                ),
                TextSpan(
                  text: localization.whatIsClassTypesTextPart8 ?? 'These are moderate flares, with minor effects on Earth, such as slight interruptions in satellite communications.\n',
                  style: const TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: localization.whatIsClassTypesTextPart9 ?? '4. Class M: ',
                  style: const TextStyle(color: Colors.white12),
                ),
                TextSpan(
                  text: localization.whatIsClassTypesTextPart10 ?? 'These are large flares, capable of causing brief radio blackouts at the Earth\'s poles and minor radiation storms that might endanger astronauts.\n',
                  style: const TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: localization.whatIsClassTypesTextPart11 ?? '5. Class X: ',
                  style: const TextStyle(color: Colors.white12),
                ),
                TextSpan(
                  text: localization.whatIsClassTypesTextPart12 ?? 'These are the largest flares, capable of causing planet-wide radio blackouts and long-lasting radiation storms.\n',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            localization.scaleExplanation ?? 'Em nossos relatórios, exibimos as escalas da seguinte forma:',
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          getHorizontalScaleIndicator("X20"),
          const SizedBox(height: 10),
          Text(
            localization.scaleExplanationDetail ?? 'Sendo:\n\nR1 = Sem riscos\nR2 = Risco moderado\nR3 = Risco preocupante\nR4 = Risco alto\nR5 = Alerta máximo',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}