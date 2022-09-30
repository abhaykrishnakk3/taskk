import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sample/screen/home_screen/view/home_screen.dart';

class LoginController extends GetxController {
  final formkey = GlobalKey<FormState>();
  void signIN() {
    if (formkey.currentState!.validate()) {
      Get.off(HomeScreen());
    }
  }
}
