import 'package:get/get.dart';
import 'package:nexo_project/controller/user_controller.dart';

/// find your controller for you when you instantiate in any of your classes (Singleton design pattern)
class NexoBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(UserController());
    // Get.lazyPut(() => UserController());
  }

}