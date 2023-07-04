import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCzTmlqpAGuhfCpSJ6Q8nxbKNtdRRFQDmY",
            authDomain: "wastelessfest.firebaseapp.com",
            projectId: "wastelessfest",
            storageBucket: "wastelessfest.appspot.com",
            messagingSenderId: "456394294898",
            appId: "1:456394294898:web:7ba3f9509939c1e67f24eb"));
  } else {
    await Firebase.initializeApp();
  }
}
