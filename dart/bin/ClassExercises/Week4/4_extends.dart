// abstract class
// interface

abstract class FlyingObject {
  void flyStraight() => print('Flying in a line');

  void flyInCircle() => print("I'm flying in circles");

  dive() {
    //Gannet
    print("I'm diving");
  }

  soar() {
    // Jet
    print("I can soar");
  }
}

abstract class Bug {
  void crawl() => print('I can crawl');
}

class Mosquito extends FlyingObject {
  @override
  flyInCircle() {
    print("I can fly in small circles");
  }

  @override
  dive() {
    print("I can't dive");
  }
}

class Airplane extends FlyingObject {}

void main(List<String> args) {
  Mosquito mosquito = Mosquito();
  mosquito.dive();
  mosquito.flyInCircle();

  Airplane plane = Airplane();
  plane.soar();
}
