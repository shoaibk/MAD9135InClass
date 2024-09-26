import 'dart:io';
import 'dart:math';

// Read 'MIN' and 'MAX' from the environment
// generate a random number beween min and max

class MinMax {
  int min, max;
  late int rand;

  MinMax()
      : min = int.parse(Platform.environment['MIN'] ?? '200'),
        max = int.parse(Platform.environment['MAX'] ?? '300') {
    var random = Random();
    rand = random.nextInt(max - min + 1) + min;
  }
}

void main(List<String> arguments) {
  var randomNumber = MinMax();
}
