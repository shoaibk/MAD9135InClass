import 'dart:io';
import 'dart:math';

class Lucky {
  Map<String, String> env = Platform.environment;
  late String min, max;
  late int luckynumber;

  Lucky() {
    min = env['MIN'] ?? '0';
    max = env['MAX'] ?? '100';

    int minInt = int.parse(min);
    int maxInt = int.parse(max);

    var random = Random();
    luckynumber = random.nextInt(maxInt - minInt + 1) + minInt;
  }
}

void main(List<String> arguments) {
  var lucky;
  //Lucky();
  for (var i = 0; i < 100; i++) {
    lucky = Lucky();
    print(lucky.luckynumber);
  }
}
