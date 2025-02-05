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
    apiKey: 'AIzaSyAJdgWMCndcubov8huqaaKg3DJ0XluIv1Y',
    appId: '1:6427388216:web:6504ac5e5166609f6939cd',
    messagingSenderId: '6427388216',
    projectId: 'final-firebase-475fc',
    authDomain: 'final-firebase-475fc.firebaseapp.com',
    storageBucket: 'final-firebase-475fc.appspot.com',
    measurementId: 'G-NV85NLK942',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBuacf2aY1kE4H8fMP7_oZaSB_MqcKv04k',
    appId: '1:6427388216:android:6cb97fdbc7e30f0f6939cd',
    messagingSenderId: '6427388216',
    projectId: 'final-firebase-475fc',
    storageBucket: 'final-firebase-475fc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB7Ee8e9UjX8CemtRzrrqKOtxsfGT_41AM',
    appId: '1:6427388216:ios:52d26e6340ce59796939cd',
    messagingSenderId: '6427388216',
    projectId: 'final-firebase-475fc',
    storageBucket: 'final-firebase-475fc.appspot.com',
    iosBundleId: 'com.example.finalBmiApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB7Ee8e9UjX8CemtRzrrqKOtxsfGT_41AM',
    appId: '1:6427388216:ios:52d26e6340ce59796939cd',
    messagingSenderId: '6427388216',
    projectId: 'final-firebase-475fc',
    storageBucket: 'final-firebase-475fc.appspot.com',
    iosBundleId: 'com.example.finalBmiApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAJdgWMCndcubov8huqaaKg3DJ0XluIv1Y',
    appId: '1:6427388216:web:e8736338362166a86939cd',
    messagingSenderId: '6427388216',
    projectId: 'final-firebase-475fc',
    authDomain: 'final-firebase-475fc.firebaseapp.com',
    storageBucket: 'final-firebase-475fc.appspot.com',
    measurementId: 'G-SZ48EB1MSF',
  );
}
