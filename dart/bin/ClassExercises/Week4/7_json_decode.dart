import 'dart:convert';

void main() {
  String jsonString = '{"name":"Alice","age":25,"isStudent":true}';

  // Convert JSON string to Dart object
  Map<String, dynamic> user = json.decode(jsonString);
  print(user); // Output: {name: Alice, age: 25, isStudent: true}

  // Accessing values from the Map
  print(user['name']); // Output: Alice
  print(user['age']); // Output: 25
}
