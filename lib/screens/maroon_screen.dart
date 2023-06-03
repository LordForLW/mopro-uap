import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaroonsApp());

class MaroonsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Maroon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MaroonsPage(),
    );
  }
}

class MaroonsPage extends StatefulWidget {
  @override
  _MaroonsPageState createState() => _MaroonsPageState();
}

class _MaroonsPageState extends State<MaroonsPage> {
  List<dynamic> _maroonsData = [];

  Future<void> _fetchMaroonsData() async {
    final response = await http.get(
        Uri.parse('https://prak-labkom-mobpro.000webhostapp.com/api/maroons'));
    if (response.statusCode == 200) {
      setState(() {
        _maroonsData = jsonDecode(response.body);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchMaroonsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Maroon'),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            icon: Icon(Icons.arrow_back)),

        centerTitle: true, // biar ditengah title nya
        backgroundColor: Color.fromARGB(255, 117, 87, 153),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0.0,
      ),
      body: _maroonsData.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(color: Color.fromARGB(255, 117, 87, 153)),
                ],
              ),
            )
          :  ListView.builder(
        itemCount: _maroonsData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star),
              ],
            ),
            title: Text(_maroonsData[index]['name']),
            subtitle: Text('ID: ${_maroonsData[index]['id']}'),
          );
        },
      ),
    );
  }
}
