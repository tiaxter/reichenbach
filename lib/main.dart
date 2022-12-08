import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  await Hive.openBox("app");
}

void main() async {
  await initHive();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: SafeArea(
        child: Text("Hello World!"),
      ),
    );
  }
}