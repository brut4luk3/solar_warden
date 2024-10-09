import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:intl/intl.dart';
import '../../../components/skyBackground.dart';
import '../../../translation/localization.dart';
import '../../neo/widgets/neoScreen.dart';
import '../../solarflare/widgets/solarFlareScreen.dart';
import '../../../components/solarFlareCards.dart';
import '../functions/homeFunctions.dart';
import '../../../constants/constants.dart';

import 'package:solar_warden/translation/TranslationWidget.dart';
import 'package:solar_warden/components/helpers/solarFlares/whatIsSolarFlare.dart';
import 'package:solar_warden/components/helpers/solarFlares/aboutTime.dart';
import 'package:solar_warden/components/helpers/solarFlares/whatIsActiveRegion.dart';
import 'package:solar_warden/components/helpers/solarFlares/whatIsClassTypes.dart';

import 'package:solar_warden/components/helpers/neos/whatIsNeo.dart';
import 'package:solar_warden/components/helpers/neos/whatIsOrbitingBody.dart';
import 'package:solar_warden/components/helpers/neos/whatIsMissDistance.dart';
import 'package:solar_warden/components/helpers/neos/aboutCloseApproachDate.dart';
import 'package:solar_warden/components/helpers/neos/aboutDiameter.dart';
import 'package:solar_warden/components/helpers/neos/aboutVelocity.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> solarFlareData = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchSolarFlareData();
  }

  Future<void> _fetchSolarFlareData() async {
    setState(() {
      isLoading = true;
    });

    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: now.weekday));
    final data = await fetchSolarFlareData(
      DateFormat('yyyy-MM-dd').format(startOfWeek),
      DateFormat('yyyy-MM-dd').format(now),
    );

    setState(() {
      solarFlareData = data;
      isLoading = false;
    });
  }

  void _showPopup(BuildContext context, String title, Widget content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.grey[900],
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          content: content,
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white12,
                foregroundColor: Colors.white,
              ),
              child: Text(AppLocalizations.of(context).closePopup ?? "Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        actions: const [TranslationWidget()],
        backgroundColor: Colors.black,
      ),
      body: SkyBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(height: 80),
                Text(
                  localization.welcome ?? 'Seja Bem-Vindo ao Solar Warden',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.yellow,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                ),
                Text(
                  localization.personalObservatory ??
                      'Seu observatório pessoal!',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.yellow,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                if (isLoading)
                  Center(
                    child: CircularProgressIndicator(color: Colors.yellow),
                  )
                else if (solarFlareData.isNotEmpty)
                  Container(
                    constraints: BoxConstraints(maxHeight: 330),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: solarFlareData.take(5).length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 300,
                              maxWidth: 380,
                            ),
                            child: SolarFlareCard(item: solarFlareData[index]),
                          ),
                        );
                      },
                    ),
                  )
                else
                  Center(
                    child: Text(
                      localization.noEvents ??
                          'Nenhum evento de flare solar disponível.',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                const SizedBox(height: 30),
                Text(
                  localization.menuLabel ??
                      'Abaixo você encontrará informações que lhe ajudarão a entender os dados apresentados por esta ferramenta:',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 50),
                _buildLegendSection(context, localization),
                const SizedBox(height: 50),
                Text(
                  localization.observeNow ?? 'Observe agora!',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                _buildActionButton(
                    localization.solarFlares ?? 'Flares Solares', context,
                    isSolarFlare: true),
                const SizedBox(height: 20),
                _buildActionButton(localization.nears ?? 'NEOs', context,
                    isNeo: true),
                const SizedBox(height: 50),
                Container(
                  height: 80,
                  width: double.infinity,
                  color: Colors.black54,
                  child: AdWidget(
                    ad: BannerAd(
                      adUnitId: bannerId,
                      size: AdSize.banner,
                      request: const AdRequest(),
                      listener: BannerAdListener(),
                    )..load(),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLegendSection(
      BuildContext context, AppLocalizations localization) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localization.solarFlares ?? 'Flares Solares',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        _buildLegendButton(
            localization.whatAreSolarFlares ?? 'O que são Flares Solares?',
            context,
            WhatIsSolarFlare()),
        _buildLegendButton(localization.understandDates ?? 'Entenda as datas',
            context, AboutTime()),
        _buildLegendButton(
            localization.typesOfClasses ??
                'Quais são os tipos de classes destes eventos?',
            context,
            WhatIsClassTypes()),
        _buildLegendButton(
            localization.activeRegions ?? 'O que são as regiões ativas?',
            context,
            WhatIsActiveRegion()),
        const SizedBox(height: 10),
        Text(
          localization.nears ?? 'NEOs',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        _buildLegendButton(localization.whatAreNEOs ?? 'O que são NEOs?',
            context, const WhatIsNeo()),
        _buildLegendButton(
            localization.approachDates ?? 'Entenda as datas de aproximação',
            context,
            const AboutCloseApproachDate()),
        _buildLegendButton(
            localization.diameter ??
                'Entenda mais sobre o diâmetro dos objetos',
            context,
            const AboutDiameter()),
        _buildLegendButton(
            localization.relativeSpeed ??
                'Entenda mais sobre a velocidade relativa',
            context,
            const AboutVelocity()),
        _buildLegendButton(
            localization.proximityDistances ??
                'Entenda as distâncias de proximidade',
            context,
            const WhatIsMissDistance()),
        _buildLegendButton(
            localization.orbitingBody ?? 'O que é o Corpo em Órbita',
            context,
            const WhatIsOrbitingBody()),
      ],
    );
  }

  Widget _buildLegendButton(String text, BuildContext context, Widget content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[900],
          foregroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          shadowColor: Colors.yellow,
          elevation: 10,
          minimumSize: const Size(double.infinity, 50),
        ),
        onPressed: () {
          _showPopup(context, text, content);
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(String text, BuildContext context,
      {bool isSolarFlare = false, bool isNeo = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              boxShadow: [
                if (isSolarFlare || isNeo)
                  BoxShadow(
                    color: Colors.yellow.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: Offset(0, 0),
                  ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[900],
              foregroundColor: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              shadowColor: Colors.yellow,
              elevation: 10,
              minimumSize: const Size(double.infinity, 80),
            ),
            onPressed: () {
              if (isNeo) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NeoScreen()),
                );
              }
              if (isSolarFlare) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SolarFlareScreen()));
              }
            },
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.yellow,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}