import 'package:flutter/material.dart';
import 'package:sem_4_flutter/project/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matrimonial App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowMaterialGrid: false,
      home: Homepage(),
    );

  }
}
