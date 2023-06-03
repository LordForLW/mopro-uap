import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas/widgets/logo_unpak.dart';

class Register_Body_Screen extends StatelessWidget {
  const Register_Body_Screen ({super.key});

  @override
  Widget build(BuildContext context) {
    var UnpakLightGrey = GoogleFonts.poppins(fontSize: 12.0,
          color: Color.fromARGB(255, 139, 139, 153)
          );
    var DetailLeft = GoogleFonts.poppins(color: Color.fromARGB(255, 0, 0, 0), fontSize: 13.0, fontWeight: FontWeight.w400);
    var DetailRight = GoogleFonts.poppins(color: Color.fromARGB(255, 145, 145, 145), fontSize: 13.0, fontWeight: FontWeight.w400);
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/logo_unpak_ungu_re.png'),
          const SizedBox(height : 26),
          
          Container(
            padding: const EdgeInsets.only(left:26.0, right: 185.0),
        
             child: Row(children: [
            Text("Daftar Akun", style: GoogleFonts.poppins(
            fontSize: 24.0, 
            fontWeight:FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
                     
                      Spacer(),
                      
                    ]),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 31.0, bottom: 8.0, left: 26.0),
                    child: Row(children: [
                      Text("Alamat Email", style: DetailLeft),
                      
                    ]),
                  ),
                  
                 Padding(
                    
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
              hintText: 'Masukkan Alamat Email UNPAK', hintStyle: DetailRight,
            ),
          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0, bottom: 8.0, left: 26.0),
                    child: Row(children: [
                      Text("Kata Sandi", style: DetailLeft),
                      
                    ]),
                  ),
                  
                 Padding(
                    
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
              hintText: 'Masukkan setidaknya 8 karakter', hintStyle: DetailRight
            ),
          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0, bottom: 8.0, left: 26.0),
                    child: Row(children: [
                      Text("Nomor HP", style: DetailLeft),
                      
                    ]),
                  ),
                  
                 Padding(
                    
          padding: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 26.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
              hintText: 'Masukkan nomor HP Anda', hintStyle: DetailRight
            ),
          ),
                  ),
                  ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/lanjut');
            }, 
            child: const Text('Lanjut'),
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 117, 87, 153),
              minimumSize: Size(360.0, 50.0),
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50)
                )
              ),
              textStyle: GoogleFonts.poppins(fontSize: 14.0),
            ),
            ),
            const SizedBox(height: 16),
            
            const Spacer()
        ],
      ),
    );
  }
}