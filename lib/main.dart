import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:solar_warden/services/api/nasa/solar_flares.dart';
import 'package:solar_warden/services/notifications/notification_service.dart';
import 'translation/locale_provider.dart';
import 'translation/localization.dart';
import 'screens/login/widgets/loginScreen.dart';
import 'package:solar_warden/translation/TranslationWidget.dart';
import 'dart:async';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final notificationService = NotificationService();
  await notificationService.init();

  runApp(
    ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      child: const MyApp(),
    ),
  );

  Timer.periodic(Duration(minutes: 20), (timer) {
    print('Enviando notificação...');
    fetchSolarFlareApiDataForNotifications();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);

    return MaterialApp(
      title: 'Solar Warden',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: provider.locale,
      supportedLocales: L10n.all,
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [TranslationWidget()],
        backgroundColor: Colors.black,
      ),
      body: const LoginScreen(),
    );
  }
}