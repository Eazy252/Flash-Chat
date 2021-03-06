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
    apiKey: 'AIzaSyA0L24kS2S7PGa9EwCoK-oOT3Q1gx-CqBI',
    appId: '1:735445953619:web:45160a0f56eee20b3daaa6',
    messagingSenderId: '735445953619',
    projectId: 'flash-chat-c04d2',
    authDomain: 'flash-chat-c04d2.firebaseapp.com',
    storageBucket: 'flash-chat-c04d2.appspot.com',
    measurementId: 'G-PRHB58P3ZE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDNb3tTi7jZZ5BVckNjdv30uJbEqW6EAHA',
    appId: '1:735445953619:android:a227a1d40c1295573daaa6',
    messagingSenderId: '735445953619',
    projectId: 'flash-chat-c04d2',
    storageBucket: 'flash-chat-c04d2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBm8nanUeOZxRrC5hlIAVAa22qvJxEh8FA',
    appId: '1:735445953619:ios:b0c7a0ac8ec100673daaa6',
    messagingSenderId: '735445953619',
    projectId: 'flash-chat-c04d2',
    storageBucket: 'flash-chat-c04d2.appspot.com',
    androidClientId: '735445953619-jnpljpifcr2bbskrd44ajfqgjrqjgb5b.apps.googleusercontent.com',
    iosClientId: '735445953619-s0le7vhqo5chjnoddfpb72ir5uv3vs60.apps.googleusercontent.com',
    iosBundleId: 'com.example.flashChatApp',
  );
}
