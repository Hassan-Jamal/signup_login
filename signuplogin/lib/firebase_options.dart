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
        return macos;
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
    apiKey: 'AIzaSyCos5-Go9AVQnqDEXgpAICWEpXhpBi_z6U',
    appId: '1:226948983037:web:fcc9edd492204e84903694',
    messagingSenderId: '226948983037',
    projectId: 'signup-login-951cc',
    authDomain: 'signup-login-951cc.firebaseapp.com',
    storageBucket: 'signup-login-951cc.appspot.com',
    measurementId: 'G-Y2FVSFYVSE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATM3N5RXALcQ70bG9rtev-YBeDMBsTr0A',
    appId: '1:226948983037:android:505a34ad4e7446ed903694',
    messagingSenderId: '226948983037',
    projectId: 'signup-login-951cc',
    storageBucket: 'signup-login-951cc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmPTBHPVzIrpzCw6jEh-RlApAZ_i6xDC4',
    appId: '1:226948983037:ios:3ee9c7ce4c76c8b7903694',
    messagingSenderId: '226948983037',
    projectId: 'signup-login-951cc',
    storageBucket: 'signup-login-951cc.appspot.com',
    iosBundleId: 'com.example.signuplogin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBmPTBHPVzIrpzCw6jEh-RlApAZ_i6xDC4',
    appId: '1:226948983037:ios:fe4b4e84a7a99aca903694',
    messagingSenderId: '226948983037',
    projectId: 'signup-login-951cc',
    storageBucket: 'signup-login-951cc.appspot.com',
    iosBundleId: 'com.example.signuplogin.RunnerTests',
  );
}