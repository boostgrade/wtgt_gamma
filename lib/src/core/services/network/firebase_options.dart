// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCpNWieeCTjxHk6xOFGyF-1ViYaZ9Oobok',
    appId: '1:1070687734019:web:ec163c3b479c5afcd20136',
    messagingSenderId: '1070687734019',
    projectId: 'flash-chat-54033',
    authDomain: 'flash-chat-54033.firebaseapp.com',
    databaseURL: 'https://flash-chat-54033.firebaseio.com',
    storageBucket: 'flash-chat-54033.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnUwAlpGgwTq7_KRLtV2BmNIROju5mAQU',
    appId: '1:1070687734019:android:af753d7db942aa5cd20136',
    messagingSenderId: '1070687734019',
    projectId: 'flash-chat-54033',
    databaseURL: 'https://flash-chat-54033.firebaseio.com',
    storageBucket: 'flash-chat-54033.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnmDR4wS82DbjSBerO_7vVSBN2SuEgdEE',
    appId: '1:1070687734019:ios:0ccf72cf81fe278bd20136',
    messagingSenderId: '1070687734019',
    projectId: 'flash-chat-54033',
    databaseURL: 'https://flash-chat-54033.firebaseio.com',
    storageBucket: 'flash-chat-54033.appspot.com',
    iosClientId:
        '1070687734019-3ljjejjqr8i3k4dhg4sj73b60fea9k3j.apps.googleusercontent.com',
    iosBundleId: 'ru.boostgrade.wtgt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCnmDR4wS82DbjSBerO_7vVSBN2SuEgdEE',
    appId: '1:1070687734019:ios:0ccf72cf81fe278bd20136',
    messagingSenderId: '1070687734019',
    projectId: 'flash-chat-54033',
    databaseURL: 'https://flash-chat-54033.firebaseio.com',
    storageBucket: 'flash-chat-54033.appspot.com',
    iosClientId:
        '1070687734019-3ljjejjqr8i3k4dhg4sj73b60fea9k3j.apps.googleusercontent.com',
    iosBundleId: 'ru.boostgrade.wtgt',
  );
}