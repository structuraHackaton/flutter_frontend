
import 'package:mobile_frontend/views/ChoosePathScreen.dart';
import 'package:mobile_frontend/views/EnterScreen.dart';
import 'package:mobile_frontend/views/WelcomeScreen.dart';
import 'package:mobile_frontend/views/homeView.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
              TextTheme(bodyText2: TextStyle(color: Colors.black)),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.black),)),
      home: ChoosePathScreen(),
    );
  }
}
