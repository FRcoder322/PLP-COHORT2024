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

  //call the methods
  void main() {
    var myCourse = Course('Mary', 'Technology', '1250');
    myCourse.displayStudent();
    myCourse.displayDepartment();
    myCourse.displayAdminNo();
  }
}
