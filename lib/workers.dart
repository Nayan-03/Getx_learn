import 'package:flutter/material.dart';
import 'package:get/get.dart';
import'package:getx_learn/my_controller.dart';

class Workers extends StatelessWidget {
  MyController myController = Get.put(MyController());
  Workers({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Workers",
      
      home: Scaffold(
        appBar: AppBar(title: const Text("Workers"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => myController.increment(),
                  child: const Text("Increment")),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  onChanged: (val) {
                    myController.increment();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
