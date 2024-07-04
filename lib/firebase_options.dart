// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBvGghW-l8ijwRbRfusKl1j3zsCQb_mWQs',
    appId: '1:630833710488:web:c08e5113855720b8a197ed',
    messagingSenderId: '630833710488',
    projectId: 'solar-warden',
    authDomain: 'solar-warden.firebaseapp.com',
    storageBucket: 'solar-warden.appspot.com',
    measurementId: 'G-JRP218S2P9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzpUZBefWd3WCCp8aSZVITYf6GqtvooYo',
    appId: '1:630833710488:android:fbd5cdc8b7633f09a197ed',
    messagingSenderId: '630833710488',
    projectId: 'solar-warden',
    storageBucket: 'solar-warden.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAMXNyGZvOdHlbAnANJZis2CuKMlWM09E',
    appId: '1:630833710488:ios:17141325e116f654a197ed',
    messagingSenderId: '630833710488',
    projectId: 'solar-warden',
    storageBucket: 'solar-warden.appspot.com',
    iosBundleId: 'com.example.solarWarden',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAAMXNyGZvOdHlbAnANJZis2CuKMlWM09E',
    appId: '1:630833710488:ios:17141325e116f654a197ed',
    messagingSenderId: '630833710488',
    projectId: 'solar-warden',
    storageBucket: 'solar-warden.appspot.com',
    iosBundleId: 'com.example.solarWarden',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBvGghW-l8ijwRbRfusKl1j3zsCQb_mWQs',
    appId: '1:630833710488:web:7a8d5b3290f4e715a197ed',
    messagingSenderId: '630833710488',
    projectId: 'solar-warden',
    authDomain: 'solar-warden.firebaseapp.com',
    storageBucket: 'solar-warden.appspot.com',
    measurementId: 'G-3B5WT68YDR',
  );
}
