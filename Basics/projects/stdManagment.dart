import 'dart:io';

void main() {
  stdout.write("Enter number of students: ");
  int studentCount = int.parse(stdin.readLineSync()!);

  List<String> names = [];
  List<String> fatherNames = [];
  List<double> percentages = [];
  List<double> averages = [];
  List<String> grades = [];
  List<int> totalMarksList = [];

  int totalPossibleMarks = 500;

  // Taking student information
  for (int i = 0; i < studentCount; i++) {
    print("\n========== Student ${i + 1} ==========");

    stdout.write("Enter student name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter father's name: ");
    String fatherName = stdin.readLineSync()!;

    names.add(name);
    fatherNames.add(fatherName);

    int totalMarks = 0;

    // Taking marks of 5 subjects
    for (int j = 1; j <= 5; j++) {
      stdout.write("Enter marks of subject $j: ");
      int marks = int.parse(stdin.readLineSync()!);

      totalMarks = totalMarks + marks;
    }

    double average = totalMarks / 5;
    double percentage = (totalMarks / totalPossibleMarks) * 100;

    String grade;

    if (percentage >= 80) {
      grade = "A+";
    } else if (percentage >= 70) {
      grade = "A";
    } else if (percentage >= 60) {
      grade = "B";
    } else if (percentage >= 50) {
      grade = "C";
    } else if (percentage >= 40) {
      grade = "D";
    } else {
      grade = "F";
    }

    totalMarksList.add(totalMarks);
    averages.add(average);
    percentages.add(percentage);
    grades.add(grade);
  }

  // Finding topper
  int topperIndex = 0;

  for (int i = 1; i < studentCount; i++) {
    if (totalMarksList[i] > totalMarksList[topperIndex]) {
      topperIndex = i;
    }
  }

  // Displaying result
  print("\n\n==========================================");
  print("           STUDENT RESULT");
  print("==========================================");

  for (int i = 0; i < studentCount; i++) {
    print("\nStudent ${i + 1}");
    print("Name       : ${names[i]}");
    print("Father Name: ${fatherNames[i]}");
    print("Total Marks: ${totalMarksList[i]} / $totalPossibleMarks");
    print("Average    : ${averages[i]}");
    print("Percentage : ${percentages[i]}%");
    print("Grade      : ${grades[i]}");
  }

  // Topper award
  print("\n==========================================");
  print("              TOPPER AWARD");
  print("==========================================");
  print("Topper Name : ${names[topperIndex]}");
  print("Father Name : ${fatherNames[topperIndex]}");
  print("Total Marks : ${totalMarksList[topperIndex]}");
  print("Percentage  : ${percentages[topperIndex]}%");
  print("Grade       : ${grades[topperIndex]}");
  print("Award       : BEST STUDENT AWARD");
  print("==========================================");
}