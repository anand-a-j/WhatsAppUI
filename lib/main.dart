import 'package:flutter/material.dart';
import 'package:whatsapp_chat_ui/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(17, 27, 33, 1),
          primarySwatch: Colors.teal,
          fontFamily: 'Roboto',
          appBarTheme:const AppBarTheme(
            iconTheme: IconThemeData(
              weight: 100,
              grade: -25,
              fill: 0,
              color: Color.fromRGBO(164, 176, 183, 1)
            )
          )
          ),
      home: SplashScreen(),
    );
  }
}
