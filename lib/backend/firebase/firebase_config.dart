import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCn4JBpb6JEecTCzQUD-YuGkHkXRwawAOA",
            authDomain: "project-27b29.firebaseapp.com",
            projectId: "project-27b29",
            storageBucket: "project-27b29.appspot.com",
            messagingSenderId: "962457154877",
            appId: "1:962457154877:web:bfe4a8e8724b02e80b4154"));
  } else {
    await Firebase.initializeApp();
  }
}
