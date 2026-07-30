
/*
  This Dart program demonstrates the use of variables to store and display student information.
  It includes different types of variables such as String, int, double, bool, final, const, and dynamic.
  The program also shows how to update variable values and print the updated information.
*/

void main() {
  //  Declare variables with meaningful names

  String studentName = "Aqeela Tahir";
  int studentId = 230154;
  double cgpa = 3.82;
  bool isEnrolled = true;
  String department = "Computer Science";
  final String university = "Minhaj University Lahore";
  const String country = "Pakistan";
  dynamic extraInfo = "Loves coding";

  // Print student information using string interpolation

  print('------ Student Information ------');
  print('Name       : $studentName');
  print('ID         : $studentId');
  print('Department : $department');
  print('CGPA       : $cgpa');
  print('Enrolled   : $isEnrolled');
  print('University : $university');
  print('Country    : $country');
  print('---------------------------------');

  // Change some variable values

  cgpa = 3.95;
  department = "AI & Data Science";
  extraInfo = "Flutter Developer";

  // Print updated information

  print('\n-- Updated Student Information --');
  print('Name       : $studentName');
  print('ID         : $studentId');
  print('Department : $department');
  print('CGPA       : $cgpa');
  print('Enrolled   : $isEnrolled');
  print('University : $university');
  print('Country    : $country');
  print('Extra Info : $extraInfo');
  print('-------------------------------------------');
}