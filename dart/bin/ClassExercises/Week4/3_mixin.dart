// mixin
// abstract classe
// interface

mixin FlyBehaviour {
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

class Mosquito with FlyBehaviour {
  @override
  flyInCircle() {
    print("I can fly in small circles");
  }

  @override
  dive() {
    print("I can't dive");
  }
}

class Airplane with FlyBehaviour {}

void main(List<String> args) {
  Mosquito mosquito = Mosquito();
  mosquito.dive();
  mosquito.flyInCircle();

  Airplane plane = Airplane();
  plane.soar();
}
