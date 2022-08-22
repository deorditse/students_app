import 'package:dex_tools_22/model_student.dart';
import 'package:get/get.dart';

class MyControllerGetX extends GetxController {
  List<Student> allStudents = [];

  // DataStudent().allStudents;

  //без сети, но можно организовать асинхронку

  List<Student> allStudentsActivists = [];

  @override
  void onInit() {
    super.onInit();
    getDataStudents();
    Stream.empty();//для проверки мемори линк
  }

  //имитация работы с сетью
  getDataStudents() async {
    await Future.delayed(Duration(seconds: 1));
    allStudents = DataStudent().allStudents;
    update();
  }

  void changeActive({required int index}) {
    if (allStudents[index].activist) {
      allStudents[index].activist = false;
      allStudentsActivists.remove(allStudents[index]);
      print(allStudentsActivists.length);
    } else {
      allStudents[index].activist = true;
      allStudentsActivists.add(allStudents[index]);
      print(allStudentsActivists.length);
    }

    update();
  }
}
