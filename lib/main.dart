import 'package:dex_tools_22/pages/activists.dart';
import 'package:dex_tools_22/pages/students.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'GetX/bindings.dart';
import 'model_student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MaintBindings(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabNavigatorPage(),
    );
  }
}

late TabController tabController;

class TabNavigatorPage extends StatefulWidget {
  TabNavigatorPage({Key? key}) : super(key: key);

  @override
  State<TabNavigatorPage> createState() => _TabNavigatorPageState();
}

class _TabNavigatorPageState extends State<TabNavigatorPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.index = 0;
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey, //чтобы при табе менялся индекс
      bottomNavigationBar: BottomNavigationBar(
        onTap: (currentIndex) {
          setState(() {
            tabController.index = currentIndex;
            tabController.animateTo(currentIndex);
          });
        },
        currentIndex: tabController.index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Students',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Activists',
          ),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        dragStartBehavior: DragStartBehavior.down,
        children: [
          StudentsPage(),
          ActivistesPage(),
        ],
      ),
    );
  }
}
