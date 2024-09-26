import 'dart:convert';

import 'package:http/http.dart' as http;

class Student {
  final String first_name;
  final String last_name;
  final String street_address;
  final String uuid;

  Student(
      {required this.first_name,
      required this.last_name,
      required this.street_address,
      required this.uuid});
  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
        first_name: json['first_name'],
        last_name: json['last_name'],
        street_address: json['street_address'],
        uuid: json['uuid']);
  }
}

void main() async {
  final url = Uri.parse(
      'https://random-data-api.com/api/v3/projects/7f520824-07d5-4099-b896-a06fa138e4e9?api_key=tQ16IYgtP9NR0pym8Dgyyg');
  final response = await http.get(url);

  final studentJson = json.decode(response.body);
  print(studentJson);

  Student s1 = Student.fromJson(studentJson);
  print(s1.first_name);
}
