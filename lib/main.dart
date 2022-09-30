import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sample/screen/home/view/home.dart';
import 'package:sample/screen/login/view/login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginScreen(),
    );
  }
}