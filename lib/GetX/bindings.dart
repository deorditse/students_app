import 'package:get/get.dart';

import 'controller.dart';

class MaintBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyControllerGetX());
  }
}
