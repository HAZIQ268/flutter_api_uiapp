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
    apiKey: 'AIzaSyBqDsLOpcNsxGvmLwu4CbxDeneVjmcHRGA',
    appId: '1:582913055917:web:8dbb1198c257c4460efa24',
    messagingSenderId: '582913055917',
    projectId: 'flutterdb-79c81',
    authDomain: 'flutterdb-79c81.firebaseapp.com',
    storageBucket: 'flutterdb-79c81.firebasestorage.app',
    measurementId: 'G-N3EBT2QR34',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6mjLLsz-tVlSmzHFKiupDAn5RG_c6Llg',
    appId: '1:582913055917:android:f659558f6a09e6110efa24',
    messagingSenderId: '582913055917',
    projectId: 'flutterdb-79c81',
    storageBucket: 'flutterdb-79c81.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCL91GboqlOAusdiFN4JnAKUeTGp0J5fco',
    appId: '1:582913055917:ios:049bc412c975e3570efa24',
    messagingSenderId: '582913055917',
    projectId: 'flutterdb-79c81',
    storageBucket: 'flutterdb-79c81.firebasestorage.app',
    iosBundleId: 'com.example.uitask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCL91GboqlOAusdiFN4JnAKUeTGp0J5fco',
    appId: '1:582913055917:ios:049bc412c975e3570efa24',
    messagingSenderId: '582913055917',
    projectId: 'flutterdb-79c81',
    storageBucket: 'flutterdb-79c81.firebasestorage.app',
    iosBundleId: 'com.example.uitask',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBqDsLOpcNsxGvmLwu4CbxDeneVjmcHRGA',
    appId: '1:582913055917:web:bbf21d818501e6850efa24',
    messagingSenderId: '582913055917',
    projectId: 'flutterdb-79c81',
    authDomain: 'flutterdb-79c81.firebaseapp.com',
    storageBucket: 'flutterdb-79c81.firebasestorage.app',
    measurementId: 'G-Z7JPGDXYL6',
  );
}
