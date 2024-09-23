abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
  void drown();
}

class Fish extends Swimmable {
  @override
  void swim() {
    print("I'm Swimming");
  }

  @override
  void drown() {
    print("I'm drowning");
  }
}

void main() {
  Fish tilapia = Fish();
  tilapia.swim();
}
