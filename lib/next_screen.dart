import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Screen"),
      ),
      body: Center(
        //   "This is next screen",
        //   style: TextStyle(color: Colors.red, fontSize: 30.0),
        // ),
        child: Text(
          "${Get.parameters['someValue']}",
          style: TextStyle(color: Colors.red, fontSize: 25.0),
        ),
      ),
    );
  }
}