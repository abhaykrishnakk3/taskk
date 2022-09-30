import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/home/controller/main_controler.dart';
import 'package:sample/screen/home_screen/view/home_screen.dart';

class MainScreen extends StatelessWidget {
   MainScreen({super.key});

  final bottomcontroller = Get.put(BottomController());

  List screens = [
    HomeScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>screens[bottomcontroller.index.value]),
      bottomNavigationBar: Obx((() => 
         BottomNavigationBar(
          onTap: ((value) => bottomcontroller.index.value = value),
          currentIndex: bottomcontroller.index.value,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.search,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,),label: "Home"),
             BottomNavigationBarItem(icon: Icon(Icons.other_houses,),label: "Home"),
                 BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Home")
        ])
      ),
     ) );
  }
}