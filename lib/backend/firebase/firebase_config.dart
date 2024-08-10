import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCtUtre9BKkdWIh5azlfHBSQhx9rwxXv6o",
            authDomain: "chatapp-d0d35.firebaseapp.com",
            projectId: "chatapp-d0d35",
            storageBucket: "chatapp-d0d35.appspot.com",
            messagingSenderId: "347860094465",
            appId: "1:347860094465:web:3d11f4b23d63492b78ba00",
            measurementId: "G-XDNBK6CXJF"));
  } else {
    await Firebase.initializeApp();
  }
}
