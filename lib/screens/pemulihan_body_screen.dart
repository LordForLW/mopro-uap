import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas/widgets/logo_unpak.dart';

class PemulihanBodyScreen extends StatelessWidget {
  const PemulihanBodyScreen({super.key});

 @override
  Widget build(BuildContext context) {
    var UnpakLightGrey = GoogleFonts.poppins(fontSize: 12.0,
          color: Color.fromARGB(255, 139, 139, 153)
          );
    var DetailLeft = GoogleFonts.poppins(color: Color.fromARGB(255, 0, 0, 0), fontSize: 13.0, fontWeight: FontWeight.w400);
    var DetailRight = GoogleFonts.poppins(color: Color.fromARGB(255, 145, 145, 145), fontSize: 13.0, fontWeight: FontWeight.w400);
    
    return SizedBox(
      width: double.infinity,
      height: 900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/logo_unpak_ungu_re.png'),
          const SizedBox(height : 26),
          
          Container(
            padding: const EdgeInsets.only(left:26.0),
        
             child: Row(children: [
            Text("Pemulihan Kata Sandi", style: GoogleFonts.poppins(
            fontSize: 24.0, 
            fontWeight:FontWeight.w700,
            color: Color.fromARGB(255, 0, 0, 0),
            ),
          ), 
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
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0), borderSide: const BorderSide(width: 310.0)),
              hintText: 'Masukkan alamat Email akun Anda', hintStyle: DetailRight,
            ),
          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0, bottom: 8.0, left: 26.0),
                    child: Row(children: [
                      Text("Kata sandi baru akan dikirimkan ke alamat email Anda", style: GoogleFonts.poppins(color: Color.fromARGB(255, 159, 159, 159), fontWeight: FontWeight.w500, fontSize: 12)),
                      
                    ]),
                  ),
                  
                 

            

            ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            }, 
            child: const Text('Kirim'),
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

        ],
      ),
    );
  }
}