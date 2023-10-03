// //////////////// dependency Get.put, Get.lazyput, ///////////////
// /////////////// Get.putAsync and Get.create /////////////////////

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/my_controller.dart';

class Dependency extends StatelessWidget {
  const Dependency({super.key});

  @override
  Widget build(BuildContext context) {
    // MyController myController =
    //     Get.put(MyController(), tag: 'Nayan', permanent: true);

    // Get.lazyPut(() => MyController(), tag: 'Nayan2', fenix: true);

    Get.putAsync<MyController>(() async => MyController());
// ////////// Here permanent will be true by default and isSingleton is flase //////////////////
    // Get.create<MyController>(
    //   () => MyController(),
    // );
    return GetMaterialApp(
      title: "Dependency Injection",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dependency Injection"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
//  ////////// Instance will be created with tag /////////////
                  //Get.find<MyController>(tag: 'Nayan');
// /////////// Find Instance //////////////
                  Get.find<MyController>();
                  Get.find<MyController>().incrementCounter();
                },
                child: Text("Click Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
