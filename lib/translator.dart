import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/messages.dart';
import 'package:getx_learn/my_controller.dart';

class Translator extends StatelessWidget {
  MyController myController = Get.put(MyController());
  Translator({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      title: "Internationalization",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Internationalization"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: const TextStyle(fontSize: 25.0, color: Colors.purple),
              ),
              ElevatedButton(
                onPressed: () {
                  //myController.changeLanguage('hi', 'IN');
                },
                child: const Text("Hindi"),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  //myController.changeLanguage('fr', 'FR');
                },
                child: const Text("French"),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                 // myController.changeLanguage('en', 'US');
                },
                child: const Text("English"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
