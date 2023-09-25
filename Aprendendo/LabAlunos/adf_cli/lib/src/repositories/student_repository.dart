import 'dart:convert';

import '../models/student.dart';
import 'package:http/http.dart' as http;

class StudentRepository {
  Future<List<Student>> findAll() async {
    final studentResult =
        await http.get(Uri.parse('http://localhost:8080/students'));

    if (studentResult.statusCode != 200) {
      throw Exception();
    }

    final studentsData = jsonDecode(studentResult.body) as List;

    return studentsData.map<Student>((student) {
      return Student.fromMap(student);
    }).toList();
  }

  Future<Student> findById(int id) async {
    final studentResult =
        await http.get(Uri.parse('http://localhost:8080/students/$id'));

    if (studentResult.statusCode != 200) {
      throw Exception();
    }

    if (studentResult.body == '{}') {
      throw Exception();
    }

    return Student.fromJson(studentResult.body);
  }

  Future<void> insert(Student student) {}

  Future<void> update(Student student) {}

  Future<void> deleteById(int id) {}
}
