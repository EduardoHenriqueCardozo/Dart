// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'city.dart';
import 'phone.dart';

class Address {
  final String street;
  final int number;
  final String zipCode;
  final City city;
  final Phone phone;

  Address({
    required this.street,
    required this.number,
    required this.zipCode,
    required this.city,
    required this.phone,
  });

  // Serialização
  Map<String, dynamic> toMap() {
    return {
      'street': street,
      'number': number,
      'zipCode': zipCode,
      'city': city.toMap(),
      'phone': phone.toMap(),
    };
  }

  String toJson() => jsonEncode(toMap());

  // Desserialização
  factory Address.fromMap(Map<String, dynamic> addressMap) {
    return Address(
      street: addressMap['street'] ?? '',
      number: addressMap['number'] ?? 0,
      zipCode: addressMap['zipCode'] ?? '',
      city: City.fromMap(addressMap['city'] ?? <String, dynamic>{}),
      phone: Phone.fromMap(addressMap['phone'] ?? <String, dynamic>{}),
    );
  }

  factory Address.fromJson(String json) => Address.fromMap(jsonDecode(json));
}
