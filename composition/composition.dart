class Instructor{
  String? _name;

  Instructor({required String name}):
      _name = name;

  String? get instructorName => _name;
  set instructorName(String? name)=> _name = name;

  @override
  String toString()  {
    return "Name of Instructor is : $_name\n";
  }
}

class Book{

  String? _bookName;
  String? _isbn;

  Book({required String? bookName, required String? isbn}):
       _bookName= bookName, _isbn = isbn;


  String? get isbn => _isbn;

  set isbn(String? value) {
    _isbn = value;
  }

  String? get bookName => _bookName;

  set bookName(String? value) {
    _bookName = value;
  }

  @override
  String toString() {
    return 'Book Name: $_bookName, ISBN number: $_isbn\n';
  }
}

class Course{
  Book _book;
  Instructor _instructor;
  String? _name;

  Course({required Book book, required Instructor instructor, required String? name}):
      _book = book, _instructor= instructor, _name = name;

  String? get name => _name;

  set name(String? value) {
    _name = value;
  }

  Instructor get instructor => _instructor;

  set instructor(Instructor value) {
    _instructor = value;
  }

  Book get book => _book;

  set book(Book value) {
    _book = value;
  }

  @override
  String toString() {
    return 'Course book: $_book, instructor: $_instructor, name: $_name\n';
  }
}

void main(){
  var course = Course(
      book: Book(
        bookName: "Advance Java",
        isbn: "2001"),
      instructor: Instructor(
          name: "Szz"),
      name: "Cse_215");

  print(course);
}