//class example with inheritance

class University {
  static final universityName = 'ABC University';
  static final location = 'Dhaka, Bangladesh';
  late num totalStuff;
  String? semesterName;

  University(this.totalStuff, this.semesterName);

  universityDetails() => print(universityName +
      '\n' +
      location +
      '\nTotal Stuff $totalStuff \nSemester Name $semesterName \n.........................');
}


class Student extends University {
  String? studentName;
  num? sID;
  bool isEnrolled = false;

  Student(this.studentName, this.sID, this.isEnrolled , num totalStuff, String? semesterName)
      : super(totalStuff, semesterName);


  @override
  universityDetails() {
    super.universityDetails();
    print("Student Name: $studentName \nStudent Id: $sID\n Status: ${isEnrolled? "Yes": "no"}");
  }
}




class Department {

  var departmentName;
  int? totalTeacher;
  int? totalPHD;
  late String chairmanName;


  Department(this.departmentName, this.totalTeacher, this.chairmanName,this.totalPHD);
  //naming constructor
  Department.TeacherDetails(){
    print("------------- Department -------------------");
  }




  departmentDetails(){
    print("Department Name: $departmentName \nTotal Teacher: $totalTeacher\nTotal Phd :$totalPHD \nChairman Name:$chairmanName");
  }
  
}


class Teacher extends Department{

  var teacherName;
  int? id;
  int? _privatePhone;
  /*
  _ sign means this variable is private. Unlike Java, dart only support private and public.
    By default every variable in dart is public.
    private variable only can accessible in own class and same file; however, using setter and getter we can access this other class or main method
    If it is in same file and in main method don't need setter and getter; however, for different file need setter and getter
    See package file example with class
   */

  Teacher(departmentName, int? totalTeacher, this.teacherName,  this.id, chairmanName, {required totalPHD}) :
        super(departmentName, totalTeacher,chairmanName,totalPHD);


  int? get privatePhone => _privatePhone;

  set privatePhone(int? value) {
    _privatePhone = value;
  }

  @override
  departmentDetails() {
    super.departmentDetails();
    print("Teacher Name is : $teacherName \nTeacher id: $id");

  }

  
}


void main() {

var s1 =  new Student("Mostak Khan", 1621478, true, 1200, 'Fall-2022');
s1.universityDetails();

new Department.TeacherDetails();
var t1 =  new Teacher("Math", 22, "Hamidul Islam", 1252525,"Abdur Rahman", totalPHD: 16);

t1.departmentDetails();
//accessing private variable
t1.privatePhone = 121254;
print("\n\n private variable : ${t1._privatePhone}");




}
