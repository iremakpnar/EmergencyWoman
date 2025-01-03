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
///
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
    apiKey: 'AIzaSyAmTFVSD5BYmwafUu1RxK86ThBSsE2nfQQ',
    appId: '1:562778108529:web:3b9dc5c50719548e0321d0',
    messagingSenderId: '562778108529',
    projectId: 'emergencywoman-24d63',
    authDomain: 'emergencywoman-24d63.firebaseapp.com',
    storageBucket: 'emergencywoman-24d63.firebasestorage.app',
    measurementId: 'G-4703P22RY4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzf6667qKj6Q4VTUXK2OzE52nKWqmgXU0',
    appId: '1:562778108529:android:09b8fd1a460dbdcc0321d0',
    messagingSenderId: '562778108529',
    projectId: 'emergencywoman-24d63',
    storageBucket: 'emergencywoman-24d63.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCF_R5Yl8VHuT67VmzEvzz_DPU1OcyCqyo',
    appId: '1:562778108529:ios:5dd855175b9d07190321d0',
    messagingSenderId: '562778108529',
    projectId: 'emergencywoman-24d63',
    storageBucket: 'emergencywoman-24d63.firebasestorage.app',
    iosBundleId: 'com.example.emergencywoman',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCF_R5Yl8VHuT67VmzEvzz_DPU1OcyCqyo',
    appId: '1:562778108529:ios:5dd855175b9d07190321d0',
    messagingSenderId: '562778108529',
    projectId: 'emergencywoman-24d63',
    storageBucket: 'emergencywoman-24d63.firebasestorage.app',
    iosBundleId: 'com.example.emergencywoman',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAmTFVSD5BYmwafUu1RxK86ThBSsE2nfQQ',
    appId: '1:562778108529:web:e7901832effaa4320321d0',
    messagingSenderId: '562778108529',
    projectId: 'emergencywoman-24d63',
    authDomain: 'emergencywoman-24d63.firebaseapp.com',
    storageBucket: 'emergencywoman-24d63.firebasestorage.app',
    measurementId: 'G-SP0Z5NF6DS',
  );

}