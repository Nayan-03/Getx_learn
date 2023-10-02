import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/home.dart';
import 'package:getx_learn/main.dart';
import 'package:getx_learn/next_screen.dart';
import 'package:getx_learn/unknownroute.dart';

class Navigationroute extends StatelessWidget {
  const Navigationroute({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation Route",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => const MyApp()),
        GetPage(name: '/home', page: () => const Home()),
        GetPage(
            name: '/nextScreen/:someValue',
            page: () => const NextScreen(),
            transition: Transition.leftToRight),

        // GetPage(
        //     name: '/nextScreen',
        //     page: () => const NextScreen(),
        //     transition: Transition.leftToRight),
      ],
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => const UnknownRoute(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Route Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ///////////// Propertise ///////////////////
                  //Get.toNamed("/home");
//  /////////// for the unkownroute /////////////////////
                  Get.toNamed('/x');
//  /////////// Go to home screen but no option  to return to privous screen////////////////
                  //Get.offNamed("/home");
//  /////////// Go to home screen and cancel all privious screens/  routes ////////////////
                  //Get.offAllNamed("/home");
//  /////////// Dynamic URL link //////////////////
                  // Get.toNamed(
                  //   "/home?channel=Nayan Moradiya&content=Flutter Getx",
                  // );
                },
                child: const Text("Go to Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
