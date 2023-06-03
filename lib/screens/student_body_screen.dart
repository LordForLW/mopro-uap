import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tugas/models/student.dart';
import 'package:tugas/services/student.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _PageStudentState();
}

class _PageStudentState extends State<StudentScreen> {
  List<StudentModel> listStudent = [];

  StudentService studentservice = StudentService();

  getData() async {
    listStudent = await studentservice.getStudent();
    setState(() {});
  }

  Future<void> _showDialog(BuildContext context, StudentModel? listStudent,
      {bool delete = false}) {
    final npmController =
        TextEditingController(text: listStudent != null ? listStudent.npm : "");

    final nameController = TextEditingController(
        text: listStudent != null ? listStudent.name : "");

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return delete
            ? AlertDialog(
                actions: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('Batal'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('Hapus'),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Future.delayed(const Duration(milliseconds: 500),
                          () => Navigator.of(context).pop());
                    },
                  ),
                ],
              )
            : AlertDialog(
                title: listStudent != null
                    ? const Text('Ubah data')
                    : const Text('Tambah data'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller: npmController,
                        decoration: const InputDecoration(
                          labelText: 'Npm',
                        ),
                      ),
                      TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                        ),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('Batal'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('Simpan'),
                    onPressed: () async {
                      bool res = await studentservice.postData(
                          npmController.text, nameController.text);

                      npmController.clear();
                      nameController.clear();

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Future.delayed(const Duration(milliseconds: 500),
                          () => Navigator.of(context).pop());
                    },
                  ),
                ],
              );
      },
    );
  }

  final snackBar = const SnackBar(
    content: Text('Yay! Berhasil~'),
  );
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halaman Student',
          style: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 72, 72, 72),
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            icon: const Icon(Icons.arrow_back)),
        centerTitle: true, // biar ditengah title nya
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: const Color.fromARGB(255, 72, 72, 72),
        elevation: 0.0,
      ),
      body: listStudent.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(color: Color.fromARGB(255, 117, 87, 153)),
                ],
              ),
            )
          : Container(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
               leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star,
                    color: Color.fromARGB(255, 117, 87, 153)),
              ],
            ),
              title: Text(listStudent[index].name,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 14)),
              subtitle: Text(listStudent[index].npm),
              textColor: const Color.fromARGB(255, 72, 72, 72),
              
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(color: Color.fromARGB(255, 117, 87, 153));
          },
          itemCount: listStudent.length,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromARGB(255, 117, 87, 153),
        onPressed: () => _showDialog(context, null),
        tooltip: 'Tambah Item',
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.add, color:  Color.fromARGB(255, 255, 255, 255),),
            Text("Tambah"),
            
          ],
        ),
      ),
    );
  }
}
