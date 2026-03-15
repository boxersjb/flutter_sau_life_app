import 'package:flutter/material.dart';
import 'package:flutter_sau_life_app/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    FlutterSauLifeApp(),
  );
}

//call main widget
class FlutterSauLifeApp extends StatefulWidget {
  const FlutterSauLifeApp({super.key});

  @override
  State<FlutterSauLifeApp> createState() => _FlutterSauLifeAppState();
}

class _FlutterSauLifeAppState extends State<FlutterSauLifeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
