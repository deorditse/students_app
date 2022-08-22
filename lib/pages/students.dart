import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../GetX/controller.dart';
import '../widgets/card_model.dart';

class StudentsPage extends StatelessWidget {
  StudentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyControllerGetX controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('All students'),
      ),
      body: SafeArea(child: GetBuilder<MyControllerGetX>(
        builder: (context) {
          if (controller.allStudents.isNotEmpty) {
            final students = controller.allStudents;
            return ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                return CardWidget(
                  index: index,
                  student: students[index],
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )),
    );
  }
}
