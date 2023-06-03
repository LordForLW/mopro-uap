import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas/widgets/logo_unpak.dart';
import 'package:tugas/main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),

          const LogoUnpak(isColored: true), //pake widget buatan sendiri namanya logo unpak
            
            const SizedBox(height : 145),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            }, 
            child: const Text('Login'),
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 117, 87, 153),
              minimumSize: const Size(240.0, 40.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                )
              ),
              textStyle: GoogleFonts.poppins(fontSize: 14.0),
            ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
              Navigator.pushNamed(context, '/register');
            }, 
            child: const Text('Register'),
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 255, 255, 255),
              onPrimary: const Color.fromARGB(255, 117, 87, 153),
              minimumSize: const Size(240.0, 40.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                )
              ),
              textStyle: GoogleFonts.poppins(fontSize: 14.0),
              side: const BorderSide(color: Color.fromARGB(255, 117, 87, 153))
            ),
            ),
            const Spacer()
            ],
        ),
      ),
    );
  }
}