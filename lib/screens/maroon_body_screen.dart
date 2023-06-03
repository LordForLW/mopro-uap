import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas/screens/profile_screen.dart';
import 'package:http/http.dart' as http;

class MaroonScreen extends StatefulWidget {
  const MaroonScreen({super.key});

  @override
  State<MaroonScreen> createState() => _MaroonScreenState();
}

class _MaroonScreenState extends State<MaroonScreen> {
  List<dynamic> _maroons = [];

  Future<void> _fetchMaroons() async {
    final response = await http.get(
        Uri.parse('https://prak-labkom-mobpro.000webhostapp.com/api/maroons'));
    if (response.statusCode == 200) {
      setState(() {
        _maroons = jsonDecode(response.body);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchMaroons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halaman Maroon',
          style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 72, 72, 72),
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            icon: Icon(Icons.arrow_back)),

        centerTitle: true, // biar ditengah title nya
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        foregroundColor: Color.fromARGB(255, 72, 72, 72),
        elevation: 0.0,
      ),
      body: _maroons.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(color: Color.fromARGB(255, 117, 87, 153)),
                ],
              ),
            )
          : ListView.builder(
        itemCount: _maroons.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star,
                    color: const Color.fromARGB(255, 117, 87, 153)),
              ],
            ),
            title: Text(_maroons[index]['name']),
            subtitle: Text('Pesan: ${_maroons[index]['message']}'),
          );
        },
      ),
      
    );
  }
}
