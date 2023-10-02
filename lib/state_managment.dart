import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/my_controller.dart';

// /////////////////////// Getx- by using Obx  and custom class///////////////////////
// class StateManagment extends StatelessWidget {
//   //var student = Student();

// ///////////////// for making enire clas  observable /////////////////////
//   //final student = Student(name: "nayan", age: 25).obs;

// //////////////// Crerate the controller ////////////////////////
//   MyController myController = Get.put(MyController());
//   StateManagment({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: "State Management",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("State Management"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
// //////////// automatic update for obx ///////////////////
//               Obx(
//                 () => Text(
//                   //"Name is ${student.name.value}",
//                   //"Name is ${student.value.name}",
//                   //"Name is ${myController.student.name}",
//                   "Name is ${myController.student.value.name}",
//                   style: const TextStyle(fontSize: 25.0),
//                 ),
//               ),
//               const SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: () {
// /////////////// If individual variables are observable //////////////////
//                   //student.name.value = student.name.value.toUpperCase();
// /////////////// If enire class is observable ////////////////////////////
//                   // student.update((student) {
//                   //   student?.name = student.name.toString().toUpperCase();
//                   // });
// //////////////// If individual variable are observable /////////////////
//                   //myController.convertToUpperCase();
// //////////////// If entire class is Observable ///////////////////////////
//                   myController.convertUpperCase();
//                 },
//                 child: const Text("Upper"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

////////////////////  Reactive state management Getx by using obx////////////////////////////
class StateManagment extends StatelessWidget {
  StateManagment({super.key});

  // void increment() {
  // var count = 0.obs;
  //   count++;
  // }

//  //////////////// If init property is not used in Getx<Type of controller> then /////////////////////
//  //////////////// create the instance of controller as follow./////////////////////
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
//  ///////////// Reactive state management getx by using controller /////////////////
              GetX<MyController>(
                //init: MyController(),
                builder: (controller) {
                  return Text(
                    //"The value  is ${controller.count}",
                    "The value is ${myController.count}",
                    style: const TextStyle(fontSize: 25),
                  );
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
//  ///////////// If instance of controller not createdat top ///////////////
                  //Get.find<MyController>().increment();
                  myController.increment();
                },
                child: const Text("Increment"),
              ),
              // Obx(
              //   () => Text(
              //     "Count value is $count",
              //     style: const TextStyle(fontSize: 25.0),
              //   ),
              // ),
              // const SizedBox(height: 16.0),
              // ElevatedButton(
              //   onPressed: () {
              //     increment();
              //   },
            ],
          ),
        ),
      ),
    );
  }
}
