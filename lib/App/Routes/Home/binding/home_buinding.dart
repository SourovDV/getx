
import 'package:get/get.dart';
import 'package:getx/App/Routes/Home/controller/home_controller.dart';

class HomeBuinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>HomeController());
  }

}