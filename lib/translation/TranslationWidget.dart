import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../translation/locale_provider.dart';

class TranslationWidget extends StatelessWidget {
  const TranslationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Image.asset('assets/flags/br.png', height: 34, width: 34),
          onPressed: () {
            Provider.of<LocaleProvider>(context, listen: false).setLocale(const Locale('pt', 'BR'));
          },
        ),
        IconButton(
          icon: Image.asset('assets/flags/us.png', height: 34, width: 34),
          onPressed: () {
            Provider.of<LocaleProvider>(context, listen: false).setLocale(const Locale('en', 'US'));
          },
        ),
      ],
    );
  }
}