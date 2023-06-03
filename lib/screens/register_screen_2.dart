import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas/widgets/logo_unpak.dart';
import 'package:tugas/main.dart';
import 'package:tugas/screens/register_body_screen.dart';
import 'package:tugas/screens/register_body_screen_2.dart';

class RegisterScreen2 extends StatelessWidget {
  const RegisterScreen2({super.key});

  @override
Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        
        
        leading: IconButton(onPressed: () {
          Navigator.pushNamed(context, '/');
        }, icon: Icon(Icons.arrow_back)),
        
        
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        foregroundColor: Color.fromARGB(255, 72, 72, 72),
        elevation: 0.0,
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),

      body:SingleChildScrollView(child: const RegisterBodyScreen2()),

      
    );
  }
}