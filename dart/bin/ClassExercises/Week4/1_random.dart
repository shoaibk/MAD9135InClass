import 'dart:math';

// generate a random number between min and max

int randomBetween({required int min, required int max}) {
  var random = Random();
  int myRandomNumber = random.nextInt(max - min + 1) + min;
  return myRandomNumber;
}

void main(List<String> arguments) {
  var r1 = randomBetween(min: 0, max: 100);
  print(r1);
}
