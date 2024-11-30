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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBpKfGZizI1F5qMvAm-91fFtHdgrWzJ1Q8',
    appId: '1:114027123751:web:f63e07a2c435e1424c2a02',
    messagingSenderId: '114027123751',
    projectId: 'abhi-auth-47717',
    authDomain: 'abhi-auth-47717.firebaseapp.com',
    storageBucket: 'abhi-auth-47717.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBI61iIhrWBzLhrrNTX92ZCWnViDNjMcj4',
    appId: '1:114027123751:android:0be8405735594aed4c2a02',
    messagingSenderId: '114027123751',
    projectId: 'abhi-auth-47717',
    storageBucket: 'abhi-auth-47717.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAt8CkgIb9BI0PslvrlxpntGbYMluNpPwE',
    appId: '1:114027123751:ios:3c1192f2878816994c2a02',
    messagingSenderId: '114027123751',
    projectId: 'abhi-auth-47717',
    storageBucket: 'abhi-auth-47717.firebasestorage.app',
    iosBundleId: 'com.example.flutterAuth1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBpKfGZizI1F5qMvAm-91fFtHdgrWzJ1Q8',
    appId: '1:114027123751:web:fb07ddfb2870e2e24c2a02',
    messagingSenderId: '114027123751',
    projectId: 'abhi-auth-47717',
    authDomain: 'abhi-auth-47717.firebaseapp.com',
    storageBucket: 'abhi-auth-47717.firebasestorage.app',
  );
}