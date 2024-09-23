A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

correction in page:
https://mad9135.github.io/F2024/modules/hybrid/dart/3-packages.html#dart-http-requests

Should be

```
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async{
  var uri = Uri.parse('https://dart.dev/f/packages/http.json');
  try{
    final info = await http.read(uri); //info about the response
    final responseG = await http.get(uri); // http get request
    final responseP = await http.post(uri); // http post request

  }catch(err){
    print('Failed http request $uri');
  }
}
```
