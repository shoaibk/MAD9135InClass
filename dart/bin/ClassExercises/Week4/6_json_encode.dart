import 'dart:convert';

void main() {
  Map<String, dynamic> user = {
    'name': 'Alice',
    'age': 25,
    'isStudent': true,
  };

  // Convert Dart object to JSON string
  String jsonString = json.encode(user);
  print(jsonString); // Output: {"name":"Alice","age":25,"isStudent":true}
}
