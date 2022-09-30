import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/screen/login/controller/login_controller.dart';
import 'package:sample/screen/login/widgets/button_google_fb.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final logincontroller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: logincontroller.formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: h * 0.09,
                  width: w * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/download.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: h * 0.016,
                ),
                const Text(
                  "Welcome to Lafyuu",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: h * 0.016,
                ),
                const Text(
                  "Sign in to continue",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Eamil';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Your email",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Your password",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: h * 0.016,
                ),
                SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          logincontroller.signIN();
                        },
                        child: const Text(
                          "Sign in",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))),
                SizedBox(
                  height: h * 0.016,
                ),
                Row(
                  children: const [
                    Expanded(
                        child: Divider(
                      thickness: 1.5,
                    )),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("OR"),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 1.5,
                    )),
                  ],
                ),
                SizedBox(
                  height: h * 0.016,
                ),
                const ButtonGoogleORFB(
                  title: "Login with Google",
                  image: "assets/unnamed.png",
                ),
                SizedBox(
                  height: h * 0.016,
                ),
                const ButtonGoogleORFB(
                  title: "Login with Facebook",
                  image: "assets/fb_icon_325x325.png",
                ),
                TextButton(
                    onPressed: () {}, child: const Text("Forgot Password?")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Dont have a account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(onPressed: () {}, child: const Text("Register"))
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
