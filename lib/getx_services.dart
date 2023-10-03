// ///////////// discused to Getx services /////////////////////
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await initServices();
  runApp(const GService());
}

Future<void> initServices() async {
  print('starting services ...');
  await Get.putAsync<Service>(() async => await Service());
  print('All services started ...');
}

class GService extends StatelessWidget {
  const GService({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx Service",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Getx Service"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Increment"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
