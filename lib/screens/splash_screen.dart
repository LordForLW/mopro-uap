import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/logo_unpak.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
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
              Navigator.pushNamed(context, '/profile');
            }, 
            child: const Text('Masuk'),
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
            const Spacer()
            ],
        ),
      ),
    );
  }
}