// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Phone {
  final int ddd;
  final String phone;

  Phone({
    required this.ddd,
    required this.phone,
  });

  // Serialização
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'phone': phone,
    };
  }

  String toJson() => jsonEncode(toMap());

  // Desserialização
  factory Phone.fromMap(Map<String, dynamic> phoneMap) {
    return Phone(
      ddd: phoneMap['ddd'] ?? 0,
      phone: phoneMap['phone'] ?? '',
    );
  }

  factory Phone.fromJson(String json) => Phone.fromMap(jsonDecode(json));
}
