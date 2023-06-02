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
    apiKey: 'AIzaSyAxXGqqQrzWZ7aZsby-hgslJzQ_T8aP6_k',
    appId: '1:483054221800:web:8377527faf323fa8f88c5d',
    messagingSenderId: '483054221800',
    projectId: 'test-project-e3cbe',
    authDomain: 'test-project-e3cbe.firebaseapp.com',
    storageBucket: 'test-project-e3cbe.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfxdrfTNm2eJfTGEYFy1gf-r988i0x1vw',
    appId: '1:483054221800:android:b46b30c63a08a5b5f88c5d',
    messagingSenderId: '483054221800',
    projectId: 'test-project-e3cbe',
    storageBucket: 'test-project-e3cbe.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVQiwR59QVnhrde3ME_rTRkNRA_ZRxxas',
    appId: '1:483054221800:ios:88078a8a293059d1f88c5d',
    messagingSenderId: '483054221800',
    projectId: 'test-project-e3cbe',
    storageBucket: 'test-project-e3cbe.appspot.com',
    iosClientId: '483054221800-06npcv6b3suobebqqm5umk0vjfn6ccvc.apps.googleusercontent.com',
    iosBundleId: 'com.example.testproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDVQiwR59QVnhrde3ME_rTRkNRA_ZRxxas',
    appId: '1:483054221800:ios:d1c5dc1fc7267474f88c5d',
    messagingSenderId: '483054221800',
    projectId: 'test-project-e3cbe',
    storageBucket: 'test-project-e3cbe.appspot.com',
    iosClientId: '483054221800-opfl3ki0e5m3nkva0unp50mc0v8hqn8r.apps.googleusercontent.com',
    iosBundleId: 'com.example.testproject.RunnerTests',
  );
}
