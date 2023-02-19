import 'package:get/get.dart';

class Homecontroller extends GetxController {
  String name = 'حمد الحربي';
  String email = 'hamad@gmail.com';
  String phone = '0561111111';
  int counter = 0;
  increment() {
    counter = counter + 1;
    update();
  }

  decrement() {
    counter = counter - 1;
    update();
  }
}
