

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoUnpak extends StatelessWidget {
  const LogoUnpak({Key? key, this.isColored = false}): super(key: key);

  final bool isColored;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(isColored 
        ? 'assets/logo_unpak_ungu.png' 
        : 'assets/logo_unpak_putih.png' ),
          const SizedBox(height: 25.24),
          Text("Universitas Pakuan", 
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color:  isColored ? Color.fromARGB(255, 72, 72, 72) : Color.fromARGB(255, 255, 255, 255),
            ),
            ),
          Text("Unggul, Mandiri & Berkarakter",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: isColored ? Color.fromARGB(255, 184, 184, 184) : Color.fromARGB(255, 255, 255, 255),
            ),),
            
            
      ],
    );
  }
}