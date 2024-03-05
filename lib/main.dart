import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:trace_app_3e/screens/register_client.dart';
import 'firebase_options.dart';
import 'package:trace_app_3e/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(TraceApp());
}

//TRACING APP
//!1) Register both a) client and b) establishment - Firebase Auth
//!2) Login a) client and b) establishment - Auth
//3) QR Code generation - qr package
//4) Scan QR Code - qr package
//5) Log/Trace - Firebase Firestore

class TraceApp extends StatelessWidget {
  const TraceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterClientScreen(),
      builder: EasyLoading.init(),
    );
  }
}
