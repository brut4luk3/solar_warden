import 'package:flutter/material.dart';
import 'package:solar_warden/translation/localization.dart';

class AboutTime extends StatelessWidget {
  const AboutTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return SingleChildScrollView(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: localization.understandDatesTextPart1 ?? 'A data de início de uma tempestade solar indica quando o evento começa, a data de pico representa o ponto de intensidade máxima e a data de término mostra quando o evento foi concluído.\n\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.understandDatesTextPart2 ?? '1. Data de Início: ',
              style: const TextStyle(color: Colors.white12, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: localization.understandDatesTextPart3 ?? 'O momento em que a atividade da tempestade solar começa.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.understandDatesTextPart4 ?? '2. Data de Pico: ',
              style: const TextStyle(color: Colors.white12, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: localization.understandDatesTextPart5 ?? 'O ponto de intensidade máxima da tempestade solar.\n',
              style: const TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: localization.understandDatesTextPart6 ?? '3. Data de Término: ',
              style: const TextStyle(color: Colors.white12, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: localization.understandDatesTextPart7 ?? 'O momento em que a atividade da tempestade solar é concluída.\n',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}