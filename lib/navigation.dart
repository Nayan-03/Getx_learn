import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/home.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
//////////////// Propertise ////////////////////
//                   Get.to(
//                     const Home(),
// //////// To make the screen full dialog/////////
//                     fullscreenDialog: true,
// //////// Tp provide animations ////////
//                     transition: Transition.zoom,
// //////// Duration for transition animation /////////
//                      //duration: const Duration(milliseconds: 4000),
// //////// Curve animation //////////////
//                     curve: Curves.bounceInOut,
//                   );
// /////// Go to home screen but no option to return to previous screen ///////////
//                //Get.off(const Home());
// /////// Go to home screen and cancel all privious screens/ routes///////////////
//                 //Get.offAll(const Home());
// /////// Go to the next screen with some data ///////////////////
//                 //Get.to(const Home(), arguments: "Data From Main");
//   ///////// Go to next screen and recive data sent from home screen //////////////////
                  var data = await Get.to(const Home());
                  print("The Received data is $data");
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
