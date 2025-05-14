import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uitask/firebase_options.dart';
import 'package:uitask/home.dart';
import 'package:uitask/login.dart';
import 'package:uitask/register.dart';

class uiapp extends StatefulWidget {
  const uiapp({super.key});

  @override
  State<uiapp> createState() => uiappState();
}

class uiappState extends State<uiapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme: TextTheme(
              bodySmall: GoogleFonts.notoSansTagalog(),
              bodyMedium: GoogleFonts.notoSansTagalog(),
              bodyLarge: GoogleFonts.notoSansTagalog(),
            ),
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.black,
              foregroundColor: Colors.black,
            )),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => homescreen(),
          '/register': (context) => register(),
          '/login': (context) => login(),
        });
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(uiapp());
}
