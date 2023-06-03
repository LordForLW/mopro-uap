import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tugas/models/student.dart';


class StudentService {
  String baseUrl = 'https://prak-labkom-mobpro.000webhostapp.com/api/students';

  Future<List<StudentModel>> getStudent() async {
    var url = Uri.parse(baseUrl);

    var res = await http.get(url);

    List? data = json.decode(res.body);
    if (data == null || data.isEmpty) {
      return [];
    } else {
      return data.map((e) => StudentModel.fromJson(e)).toList();
    }
  }

  Future postData(String npm, String name) async {
    try {
      final res =
          await http.post(Uri.parse(baseUrl), body: {"npm": npm, "name": name});

      if (res.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
