import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/my_controller.dart';

class UniqueId extends StatelessWidget {
  MyController myController = Get.put(MyController());
  UniqueId({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Unique Id",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Unique ID"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                id: 'txtCount',
                builder: (controller) {
                  return const Text("",
                    //"The value is ${controller.count}",
                    style: TextStyle(fontSize: 25.0),
                  );
                },
              ),
              GetBuilder<MyController>(
                //id: 'txtCount',
                builder: (controller) {
                  return const Text("",
                    //"The value is ${controller.count}",
                    style: TextStyle(fontSize: 25.0),
                  );
                },
              ),
              const SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () {},
                //=> myController.increment(),
                child: const Text("Increment"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
