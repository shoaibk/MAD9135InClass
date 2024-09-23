import 'dart:convert';

import 'package:http/http.dart' as http;

class PackageInfo {
  final String name;
  final String latestVersion;
  final String description;
  final String publisher;
  final String repository;

  PackageInfo({
    required this.name,
    required this.latestVersion,
    required this.description,
    required this.publisher,
    required this.repository,
  });

  factory PackageInfo.fromJson(Map<String, dynamic> json) {
    return PackageInfo(
      name: json['name'],
      latestVersion: json['latestVersion'],
      description: json['description'],
      publisher: json['publisher'],
      repository: json['repository'],
    );
  }
}

void main() async {
  final packageUrl = Uri.parse('https://dart.dev/f/packages/http.json');
  final packageResponse = await http.get(packageUrl);

  // If the request didn't succeed, throw an exception
  if (packageResponse.statusCode != 200) {
    print('error getting data');
  }

  final packageJson =
      json.decode(packageResponse.body); // as Map<String, dynamic>;
  print(packageJson);
  print(PackageInfo.fromJson(packageJson).description);
}
