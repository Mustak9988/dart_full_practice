//class example with inheritance
class University {
  static final universityName = 'ABC University';
  static final location = 'Dhaka, Bangladesh';
  late num totalStuff;
  String? semesterName;

  University(this.totalStuff, {required this.semesterName });

  universityDetails()=>print(
    universityName+'\n'+location+'\nTotal Stuff $totalStuff \nSemester Name $semesterName \n.........................'
  );
}

class Department extends University{
  var departmentName;
  int? totalTeacher;

  Department(num totalStuff, String? semesterName, this.departmentName, this.totalTeacher) :
        super(totalStuff, {

      });

  @override
  universityDetails() {
    return super.universityDetails();
  }


}


class Student extends Department {
  String? studentName;
  num? sID;
  bool? isEnrolled;

  Student(num totalStuff, String? semesterName, departmentName, int? totalTeacher) :
        super(totalStuff, semesterName, departmentName, totalTeacher);

  Student.details(this.studentName,this.isEnrolled,this.sID);


}



void main() {
 Student s1 = new Student(100, 'Summer 2022', 'ECE', 57);
 Student s2 = new Student.details("Md Abdullah", true, 1621754);
}
