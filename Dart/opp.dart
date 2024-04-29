// Define a Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Define a Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Define a class to create student and teacher objects
class School {
  void createObjects() {
    // Create a student object
    var student = Student('John Doe', 15, '10th');

    // Create a teacher object
    var teacher = Teacher('Ms. Smith', 35, 'Mathematics');

    // Print student's information
    student.printInfo();

    // Print teacher's information
    teacher.printInfo();
  }
}

void main() {
  // Create an instance of the School class
  var school = School();

  // Call the method to create objects and print information
  school.createObjects();
}
