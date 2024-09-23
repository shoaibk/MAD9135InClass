// constructor shorthand
// static member

class Student {
  static int count = 0;
  late String name;
  late int id;

  // Student(String name, int id) {
  //   this.name = name;
  //   this.id = id;
  // }

  Student(this.name, this.id) {
    //increment the static count
    Student.count++;
  }
}

void main() {
  Student s1 = Student('Tom', 123);
  print(Student.count);
}
