import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../GetX/controller.dart';
import '../widgets/card_model.dart';

class ActivistesPage extends StatelessWidget {
  const ActivistesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyControllerGetX controller = Get.find();
    final students = controller.allStudentsActivists;
    return Scaffold(
      appBar: AppBar(
        title: Text('Activists'),
      ),
      body: SafeArea(
        child: GetBuilder<MyControllerGetX>(
          builder: (context) => ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              return CardWidget(
                index: null,
                student: students[index],
              );

              // return cardModel(student: students[index]);
            },
          ),
        ),
      ),
    );
  }
}
