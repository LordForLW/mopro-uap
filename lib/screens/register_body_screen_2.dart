import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas/widgets/logo_unpak.dart';

class RegisterBodyScreen2 extends StatelessWidget {
  const RegisterBodyScreen2 ({super.key});

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
            padding: const EdgeInsets.only(left:26.0, right: 185.0),
        
             child: Row(children: [
            Text("Detail Akun", style: GoogleFonts.poppins(
            fontSize: 24.0, 
            fontWeight:FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
                     
                      
                      
                    ]),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 31.0, bottom: 8.0, left: 26.0),
                    child: Row(children: [
                      Text("Nama", style: DetailLeft),
                      
                    ]),
                  ),
                  
                 Padding(
                    
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0), borderSide: const BorderSide(width: 310.0)),
              hintText: 'Masukkan nama lengkap Anda', hintStyle: DetailRight,
            ),
          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0, bottom: 8.0, left: 26.0),
                    child: Row(children: [
                      Text("Nama Panggilan", style: DetailLeft),
                      
                    ]),
                  ),
                  
                 Padding(
                    
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
              hintText: 'Masukkan Nama Panggilan', hintStyle: DetailRight
            ),
          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0, bottom: 8.0, left: 26.0),
                    child: Row(children: [
                      Text("NPM", style: DetailLeft),
                      
                    ]),
                  ),
                  
                 Padding(
                    
          padding: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 26.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
              hintText: 'Masukkan NPM Anda', hintStyle: DetailRight
            ),
          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0, bottom: 8.0, left: 26.0),
                    child: Row(children: [
                      Text("Pilih Program Studi", style: DetailLeft),
                      
                    ]),
                  ),
                  
                  Padding(
                    
          padding: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 26.0),
          child: DropdownButton(
            items: [
              DropdownMenuItem(child: Text("Ilmu Komputer"), value: "Ilmu Komputer"),
              DropdownMenuItem(child: Text("Farmasi"), value: "Farmasi"),
              DropdownMenuItem(child: Text("Kimia"), value: "Kimia"),
              DropdownMenuItem(child: Text("Alkemis"), value: "Alkemis"),
            ], onChanged:(value) => DropdownMenu, isExpanded: true, 
            style: DetailRight, borderRadius: BorderRadius.circular(50),)
                  ),
                  
                Padding(
                    padding: const EdgeInsets.only(top: 13.0, bottom: 8.0, left: 26.0),
                    child: Row(children: [
                      Text("Alamat Rumah/Kost", style: DetailLeft),
                      
                    ]),
                  ),
                  
                 Padding(
                    
          padding: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 26.0),
          child: TextFormField(
            minLines: 3,
            maxLines: 4,
            decoration: InputDecoration(
              
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Masukkan Alamat Rumah/Kost Anda', hintStyle: DetailRight
            ),
          ),
                  ),

            ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            }, 
            child: const Text('Daftar'),
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