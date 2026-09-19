import 'dart:io';
/*
void main() {
  num number = 10.5;
  print(number);
  String name = "Aqeela";
  print(name);

  print("Enter your name:");

  String name1 = stdin.readLineSync()!;
  print("hello $name1");
}
*/

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;
  print("Your name is: $name");

  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);
  print("Your age is: $age");

  stdout.write("Are you a student? (true/false): ");
  bool isStudent = bool.parse(stdin.readLineSync()!);
  print("Is student: $isStudent");

  stdout.write("Enter your CGPA: ");
  double cgpa = double.parse(stdin.readLineSync()!);
  print("Your CGPA is: $cgpa");
}
