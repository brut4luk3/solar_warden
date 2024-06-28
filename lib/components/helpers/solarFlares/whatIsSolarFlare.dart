import 'package:flutter/material.dart';
import 'package:solar_warden/translation/localization.dart';

class WhatIsSolarFlare extends StatelessWidget {
  const WhatIsSolarFlare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return SingleChildScrollView(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: localization.whatAreSolarFlaresTextPart1 ?? 'Flares solares são erupções repentinas de radiação eletromagnética da superfície do Sol. Esses eventos ocorrem quando a energia armazenada em campos magnéticos, geralmente acima de manchas solares, é liberada subitamente.\n\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatAreSolarFlaresTextPart2 ?? 'Impactos no Dia a Dia:\n\n',
              style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextSpan(
              text: localization.whatAreSolarFlaresTextPart3 ?? '1. Disrupções em Comunicações: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatAreSolarFlaresTextPart4 ?? 'Flares solares podem causar interferências nas comunicações por rádio de alta frequência e nas comunicações por satélite.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatAreSolarFlaresTextPart5 ?? '2. Tempestades Geomagnéticas: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatAreSolarFlaresTextPart6 ?? 'A liberação de partículas energéticas pode provocar tempestades geomagnéticas que afetam redes elétricas e sistemas de navegação.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatAreSolarFlaresTextPart7 ?? '3. Radiação: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatAreSolarFlaresTextPart8 ?? 'A radiação dos flares solares pode representar um risco para astronautas e passageiros de voos em altitudes elevadas.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.whatAreSolarFlaresTextPart9 ?? '4. Auroras: ',
              style: const TextStyle(color: Colors.white12),
            ),
            TextSpan(
              text: localization.whatAreSolarFlaresTextPart10 ?? 'Flares solares intensos podem resultar em auroras espetaculares visíveis em latitudes mais baixas do que o normal.\n',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}