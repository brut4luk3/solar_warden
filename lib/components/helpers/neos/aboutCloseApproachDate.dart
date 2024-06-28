import 'package:flutter/material.dart';
import 'package:solar_warden/translation/localization.dart';

class AboutCloseApproachDate extends StatelessWidget {
  const AboutCloseApproachDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: localization.aboutCloseApproachDateTextPart1 ?? 'The close approach date of a Near-Earth Object (NEO) is the date on which the object will come closest to Earth. This information is crucial for assessing potential impact risks and preparing any necessary defensive measures.\n\n',
                  style: const TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: localization.aboutCloseApproachDateTextPart2 ?? 'Notable Close Approach:\n\n',
                  style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextSpan(
                  text: localization.aboutCloseApproachDateTextPart3 ?? 'Asteroid Apophis: ',
                  style: const TextStyle(color: Colors.white12),
                ),
                TextSpan(
                  text: localization.aboutCloseApproachDateTextPart4 ?? 'Apophis is a well-known NEO that will have a close approach to Earth on April 13, 2029. During this approach, Apophis will come within 31,000 kilometers of Earth, which is closer than the distance of geostationary satellites.\n\n',
                  style: const TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: localization.aboutCloseApproachDateTextPart5 ?? 'Significance of Apophis\' Close Approach:\n\n',
                  style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextSpan(
                  text: localization.aboutCloseApproachDateTextPart6 ?? 'The 2029 approach of Apophis will be a unique opportunity for scientists to study this asteroid up close, providing valuable data to improve our understanding of NEOs and their potential threats.\n',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/apophis.gif',
            width: MediaQuery.of(context).size.width * 0.8,
          ),
        ],
      ),
    );
  }
}