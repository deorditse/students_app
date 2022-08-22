import 'package:dex_tools_22/model_student.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../GetX/controller.dart';

class CardWidget extends StatelessWidget {
  int? index;
  Student student;

  CardWidget({required this.index, required this.student, Key? key})
      : super(key: key);

  MyControllerGetX controllerGetX = Get.find();

  @override
  Widget build(BuildContext context) {
    void toggleBottomSheet({required Student student}) {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              height: 220,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Тут какая-то информация про пользу активизма и что-то написано, чтобы привлечь внимание ',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GetBuilder<MyControllerGetX>(
                    builder: (context) => ElevatedButton(
                      onPressed: () {
                        controllerGetX.changeActive(
                            index: index ??
                                controllerGetX.allStudents.indexOf(student));

                        // setState(() {});
                      },
                      child: Text(
                        student.activist
                            ? 'Активист - активировано'
                            : 'Студент не аактивист - стать активистом',
                      ),
                    ),
                  ),
                ],
              ),
            );
          });
    }

    return Card(
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.asset(
                    student.photoPath,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Имя'),
                    Text(
                      '${student.name}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Средний бал:'),
                    Text(
                      '${student.mBall}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Активист'),
                    TextButton(
                      onPressed: () {
                        toggleBottomSheet(student: student);
                      },
                      child: Text(
                        student.activist ? 'да' : 'нет',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
