import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/next_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "This is Home Screen",
              style: TextStyle(color: Colors.purpleAccent, fontSize: 25.0),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/nextScreen');
              },
              child: const Text(
                "Next Screen",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Get.back();
/////////// Send data to privious screen must use result as name //////////////////
                //Get.back(result: "This is from Home Screen");
              },
              child: const Text(
                "Back To Main",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
            const SizedBox(height: 10.0),
            // Text(
            //     "Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}",
            //     style: const TextStyle(color: Colors.red, fontSize: 25.0)),
///////////////////////////            
            // Text(
            //   "${Get.arguments}",
            //   style: TextStyle(color: Colors.green, fontSize: 20.0),
            // ),
          ],
        ),
      ),
    );
  }
}
