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
    apiKey: 'AIzaSyBVRok8wjEY0BByZXSiecvBKHlfvT2V4Do',
    appId: '1:330838274408:web:ea617e71817787f76f26dd',
    messagingSenderId: '330838274408',
    projectId: 'food-delivery-6d679',
    authDomain: 'food-delivery-6d679.firebaseapp.com',
    storageBucket: 'food-delivery-6d679.appspot.com',
    measurementId: 'G-VYJDEJHQPW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyALOYrQmaTPtl7_E5cHl7CN1RVORitDUDI',
    appId: '1:330838274408:android:6e96d65ec0c426786f26dd',
    messagingSenderId: '330838274408',
    projectId: 'food-delivery-6d679',
    storageBucket: 'food-delivery-6d679.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDvvJy6m7lkvkSZ5mw2_GZqqRcsB3PByuQ',
    appId: '1:330838274408:ios:88850a263fb899686f26dd',
    messagingSenderId: '330838274408',
    projectId: 'food-delivery-6d679',
    storageBucket: 'food-delivery-6d679.appspot.com',
    iosBundleId: 'com.example.foodDelivery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDvvJy6m7lkvkSZ5mw2_GZqqRcsB3PByuQ',
    appId: '1:330838274408:ios:734708104d3d9ccf6f26dd',
    messagingSenderId: '330838274408',
    projectId: 'food-delivery-6d679',
    storageBucket: 'food-delivery-6d679.appspot.com',
    iosBundleId: 'com.example.foodDelivery.RunnerTests',
  );
}