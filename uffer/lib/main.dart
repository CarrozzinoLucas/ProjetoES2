import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uffer/theme/theme.dart';
import 'package:uffer/widget_tree.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MaterialTheme(Typography.material2021().black).light(),
      home: const WidgetTree(),
    );
  }
}
