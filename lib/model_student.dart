class Student {
  String photoPath;
  String name;
  double mBall;
  bool activist = false;

  Student({
    required this.photoPath,
    required this.name,
    required this.activist,
    required this.mBall,
  });
}

class DataStudent {
  final List<Student> _allStudents = [
    Student(
      photoPath: 'assets/avatars_photo/245gt.png',
      name: 'Alex',
      activist: false,
      mBall: 4.0,
    ),
    Student(
      photoPath: 'assets/avatars_photo/ascvc.png',
      name: 'Bob',
      activist: false,
      mBall: 4.4,
    ),
    Student(
      photoPath: 'assets/avatars_photo/images.jpeg',
      name: 'Martin',
      activist: false,
      mBall: 4.5,
    ),
    Student(
      photoPath: 'assets/avatars_photo/images.png',
      name: 'Ivan',
      activist: false,
      mBall: 4.3,
    ),
    Student(
      photoPath: 'assets/avatars_photo/images23.png',
      name: 'Dmitry',
      activist: false,
      mBall: 5,
    ),
    Student(
      photoPath: 'assets/avatars_photo/imagesev.jpeg',
      name: 'Vladimir',
      activist: false,
      mBall: 5,
    ),
    Student(
      photoPath: 'assets/avatars_photo/nhgt.png',
      name: 'Anatoly',
      activist: false,
      mBall: 3.9,
    ),
    Student(
      photoPath: 'assets/avatars_photo/sfv.jpeg',
      name: 'Petya',
      activist: false,
      mBall: 4.8,
    ),
    Student(
      photoPath: 'assets/avatars_photo/wernth.jpeg',
      name: 'Andrey',
      activist: false,
      mBall: 4.23,
    ),
    Student(
      photoPath: 'assets/avatars_photo/wrbehtn.jpeg',
      name: 'Sergey',
      activist: false,
      mBall: 4.98,
    ),
    Student(
      photoPath: 'assets/avatars_photo/wrvefw.jpeg',
      name: 'Seva',
      activist: false,
      mBall: 5,
    ),
  ];

  List<Student> get allStudents => _allStudents;
}
