import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/student.dart';
import 'services/student.dart';
import 'screens/register_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/register_screen.dart';
import 'screens/register_screen_2.dart';
import 'screens/login_screen.dart';
import 'screens/pemulihan_screen.dart';
import 'screens/maroon_body_screen.dart';
import 'screens/student_body_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/lanjut': (context) => RegisterScreen2(),
        '/input': (context) => LoginScreen(),
        '/pemulihan': (context) => PemulihanScreen(),
        '/profile': (context) => ProfileScreen(),
        '/maroon': (context) => MaroonScreen(),
        '/student': (context) => StudentScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
