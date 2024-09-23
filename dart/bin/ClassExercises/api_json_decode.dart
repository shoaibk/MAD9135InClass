import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  User(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address,
      required this.phone,
      required this.website,
      required this.company});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'] as int,
        name: json['name'] as String,
        username: json['username'] as String,
        email: json['email'] as String,
        address: Address.fromJson(json['address']),
        phone: json['phone'] as String,
        website: json['website'],
        company: Company.fromJson(json['company']));
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;
  Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
        name: json['name'], catchPhrase: json['catchPhrase'], bs: json['bs']);
  }
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        street: json['street'] as String,
        suite: json['suite'] as String,
        city: json['city'] as String,
        zipcode: json['zipcode'] as String,
        geo: Geo.fromJson(json['geo']));
  }
}

class Geo {
  final String lat;
  final String lng;
  Geo({required this.lat, required this.lng});
  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(lat: json['lat'], lng: json['lng']);
  }
}

void main() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users/');
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body) as List<dynamic>;
    List<User> users = jsonResponse.map((json) => User.fromJson(json)).toList();
    for (var user in users) {
      print('User: ${user.name}');
    }

    var itemCount = jsonResponse.length;
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
