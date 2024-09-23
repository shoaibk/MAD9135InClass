import 'package:http/http.dart' as http;

void main() async {
  var uri = Uri.parse('https://dart.dev/f/packages/http.json');
  late final info;
  try {
    info = await http.get(uri); //info about the response
    print(info);
  } catch (err) {
    print('Failed http request $uri');
  }

  print('end');
}
