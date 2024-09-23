class Student {
  static int count = 0;
  late String name;
  late int id;

  Student(this.name, this.id) {
    Student.count++;
  }

  Student.create(this.name, this.id);
}

void main() {
  Student s1 = Student('Tom', 123);
  print(Student.count);

  Student s2 = Student.create('Bill', 124);
  print(Student.count);
}
