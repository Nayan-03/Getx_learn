import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/my_controller.dart';

class ControllerLifecycle extends StatelessWidget {
  MyController myController = Get.put(MyController());
  ControllerLifecycle({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Controller Lifecycle",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Controller Lifecycle"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                // initState: (state) => myController.increment(),
                // dispose: (state) => myController.cleanUpTask(),
                builder: (controller) {
                  return const Text("",
                   // "The value is ${controller.count}",
                    style: TextStyle(fontSize: 25.0),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
