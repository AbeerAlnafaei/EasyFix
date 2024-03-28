import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAyAhF48CdTCLw0-BWCm4kJrRufIG4-E9U",
            authDomain: "easyfix-504dd.firebaseapp.com",
            projectId: "easyfix-504dd",
            storageBucket: "easyfix-504dd.appspot.com",
            messagingSenderId: "1000610675167",
            appId: "1:1000610675167:web:e3ec8247bbe0ce09b6ec6a"));
  } else {
    await Firebase.initializeApp();
  }
}
