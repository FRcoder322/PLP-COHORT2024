import 'dart:io';

abstract class Displayable {
  void display();
}

class Course {
  String Student;
  String Department;
  String AdminNo;
  //constructor
  Course(this.Student, this.Department, this.AdminNo);

  void displayStudent() {
    print('Student:$Student');
  }

  void displayDepartment() {
    print('Department:$Department');
  }

  void displayAdminNo() {
    print('AdminNo:$AdminNo');
  }
}

class CourseWithInterface extends Course implements Displayable {
  CourseWithInterface(String student, String department, String adminNo)
      : super(student, department, adminNo);

  @override
  void display() {
    print('Course information:');
    displayStudent();
    displayDepartment();
    displayAdminNo();
  }
}

class CourseFromFile extends Course {
  CourseFromFile(String filePath) : super('', '', '') {
    // Read data from file and initialize the instance
    // For simplicity, let's assume the file contains lines in the format: Student, Department, AdminNo
    List<String> lines = File(filePath).readAsLinesSync();
    if (lines.isNotEmpty) {
      List<String> data = lines[0].split(',');
      if (data.length >= 3) {
        Student = data[0];
        Department = data[1];
        AdminNo = data[2];
      }
    }
  }
}

void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

//call the methods
void main() {
  var myCourse = Course('Mary', 'Technology', '1250');
  myCourse.displayStudent();
  myCourse.displayDepartment();
  myCourse.displayAdminNo();
  var derivedCourse = CourseWithInterface('John', 'Engineering', '1234');
  derivedCourse.display();

  // Demonstration of initialization with data from a file
  var courseFromFile = CourseFromFile('data.txt');
  courseFromFile.displayStudent();
  courseFromFile.displayDepartment();
  courseFromFile.displayAdminNo();

  // Demonstration of loop usage
  printNumbers(5);
}
