import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAaPgBif7ntJ5YN6zZItfEk3ehRJLT0FMk",
            authDomain: "istanbul-anadolu.firebaseapp.com",
            projectId: "istanbul-anadolu",
            storageBucket: "istanbul-anadolu.appspot.com",
            messagingSenderId: "294189547747",
            appId: "1:294189547747:web:ad4e7082b80f7a584245d6",
            measurementId: "G-BHTXBW2G03"));
  } else {
    await Firebase.initializeApp();
  }
}
