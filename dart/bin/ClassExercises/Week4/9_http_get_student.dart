import 'dart:convert';

import 'package:http/http.dart' as http;

class Student {
  final String name;
  final bool isStudent;

  Student({required this.name, required this.isStudent});
  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(name: json['name'], isStudent: json['isStudent']);
  }
}

void main() async {
  final url = Uri.parse(
      'https://random-data-api.com/api/v3/projects/7f520824-07d5-4099-b896-a06fa138e4e9?api_key=tQ16IYgtP9NR0pym8Dgyyg');
  final response = await http.get(url);

  final packageJson = json.decode(response.body);
  print(packageJson);

  Student s1 = Student.fromJson(packageJson);
  print(s1.name);
}
