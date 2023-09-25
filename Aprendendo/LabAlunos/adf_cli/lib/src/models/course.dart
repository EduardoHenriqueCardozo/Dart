// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Course {
  final int id;
  final String name;
  final bool isStudent;

  Course({
    required this.id,
    required this.name,
    required this.isStudent,
  });

  // Serialização
  // Passo 1
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'isStudent': isStudent,
    };
  }

  // Passo 2
  String toJson() => jsonEncode(toMap());

  // Desserialização
  // Passo 
  factory Course.fromMap(Map<String, dynamic> courseMap) {
    return Course(
      id: courseMap['id'] ?? 0,
      name: courseMap['name'] ?? '',
      isStudent: courseMap['isStudent'] ?? false,
    );
  }

  factory Course.fromJson(String json) => Course.fromMap(jsonDecode(json));
}
