import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SnackbarWidget extends StatefulWidget {
  const SnackbarWidget({super.key});

  @override
  State<SnackbarWidget> createState() => _SnackbarWidgetState();
}

class _SnackbarWidgetState extends State<SnackbarWidget> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text("Snackbar")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                      "Snackbar Title", "This will be Snackbar Message",
                      //////////////////// Properties ////////////////
                      snackPosition: SnackPosition.BOTTOM,
                      // titleText: const Text("Nayan"),
                      // messageText: const Text(
                      //   "Nayan's Message",
                      //   style: TextStyle(color: Colors.red),
                      // ),
                      colorText: Colors.black,
                      backgroundColor: Colors.blue,
                      borderRadius: 30.0,
                      margin: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 30.0),
                      //maxWidth: 200.0,
                      animationDuration: const Duration(milliseconds: 3000),
                      backgroundGradient: const LinearGradient(
                        colors: [
                          Colors.blueAccent,
                          Colors.white,
                          Colors.blueGrey
                        ],
                      ),
                      borderColor: Colors.indigo,
                      borderWidth: 10.0,
                      boxShadows: [
                        const BoxShadow(
                          color: Colors.cyan,
                          //offset: Offset(60, 60),
                          //spreadRadius: 20.0,
                          blurRadius: 20.0,
                        ),
                      ],
                      isDismissible: true,
                      dismissDirection: DismissDirection.horizontal,
                      forwardAnimationCurve: Curves.bounceInOut,
                      duration: const Duration(milliseconds: 8000),
                      icon: const Icon(
                        Icons.send_sharp,
                        color: Colors.indigo,
                      ),
                      shouldIconPulse: false,
                      leftBarIndicatorColor: Colors.black,
                      mainButton: TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: () {
                          print("Retry Clicked");
                        },
                        child: const Text(
                          "Retry",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      onTap: (snack) {
                        print("Snackbar Clicked");
                      },
                      overlayBlur: 5,
                      //overlayColor: Colors.cyan,
                      padding: const EdgeInsets.all(30.0),
                      showProgressIndicator: true,
                      progressIndicatorBackgroundColor: Colors.white,
                      progressIndicatorValueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.black),
                      reverseAnimationCurve: Curves.bounceInOut,
                      snackbarStatus: (status) {
                        print(status);
                      },
                      userInputForm: const Form(
                          child: Row(
                        children: [Expanded(child: TextField())],
                      )));
                },
                child: const Text("Show Snackbar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
