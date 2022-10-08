import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'pages/login_page.dart';

void main() async{
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // ignore: deprecated_member_use
  FlutterNativeSplash.removeAfter(splash);
  runApp(const MyApp());
}

Future splash(BuildContext context) async{
  await Future.delayed(const Duration(seconds: 3));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage()
    );
  }
}

