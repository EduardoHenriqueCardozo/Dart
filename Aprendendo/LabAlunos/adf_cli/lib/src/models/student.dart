// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'address.dart';
import 'course.dart';

class Student {
  final int? id;
  final String name;
  final int? age;
  final List<String> nameCourses;
  final List<Course> courses;
  final Address address;

  Student({
    this.id,
    required this.name,
    this.age,
    required this.nameCourses,
    required this.courses,
    required this.address,
  });

  // Serialização
  Map<String, dynamic> toMap() {
    final studentmap = <String, dynamic>{
      'id': id,
      'name': name,
      'nameCourses': nameCourses,
      'courses': courses.map((curso) => curso.toMap()).toList(),
      'address': address.toMap(),
    };

    if (age != null) {
      studentmap['age'] = age;
    }
    return studentmap;
  }

  String toJson() => jsonEncode(toMap());

  // Desserialização

  factory Student.fromMap(Map<String, dynamic> studentMap) {
    return Student(
      id: studentMap['id'] ?? 0,
      name: studentMap['name'] ?? '',
      nameCourses: List<String>.from((studentMap['nameCourses'] ?? <String>[])),
      courses: studentMap['courses']
              ?.map<Course>((courseMap) => Course.fromMap(courseMap))
              .toList() ??
          <Course>[],
      address: Address.fromMap((studentMap['address'] ?? <String, dynamic>{})),
    );
  }

  factory Student.fromJson(String json) => Student.fromMap(jsonDecode(json));
}
