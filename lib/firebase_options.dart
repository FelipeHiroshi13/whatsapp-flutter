// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAdJbly44auQQgNHJ6F46iTM0uuvZ-1Z8E',
    appId: '1:621021874166:web:074341ec8c2bc72944e9d7',
    messagingSenderId: '621021874166',
    projectId: 'whatsapp-backend-dd802',
    authDomain: 'whatsapp-backend-dd802.firebaseapp.com',
    storageBucket: 'whatsapp-backend-dd802.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQD5UUW03qTMiEZOEpFEEK8PWNZugAGFY',
    appId: '1:621021874166:android:0d1849de74cce40644e9d7',
    messagingSenderId: '621021874166',
    projectId: 'whatsapp-backend-dd802',
    storageBucket: 'whatsapp-backend-dd802.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCH1Szic-1cQXCzdJIs4xu2Lb3OeR-uO2o',
    appId: '1:621021874166:ios:a1768cae84753d6a44e9d7',
    messagingSenderId: '621021874166',
    projectId: 'whatsapp-backend-dd802',
    storageBucket: 'whatsapp-backend-dd802.appspot.com',
    iosClientId: '621021874166-epsnt8ujllvjhqqg0rrg82s69ln48vae.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappUi',
  );
}
