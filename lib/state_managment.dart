import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/my_controller.dart';


/////////////////////// Getx- by using Obx  and custom class///////////////////////
class StateManagment extends StatelessWidget {
  //var student = Student();

///////////////// for making enire clas  observable /////////////////////
  //final student = Student(name: "nayan", age: 25).obs;

//////////////// Crerate the controller ////////////////////////
  MyController myController = Get.put(MyController());
  StateManagment({super.key});

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
//////////// automatic update for obx ///////////////////
              Obx(
                () => Text(
                  //"Name is ${student.name.value}",
                  //"Name is ${student.value.name}",
                  "Name is ${myController.student.name}",
                  style: const TextStyle(fontSize: 25.0),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
/////////////// If individual variables are observable //////////////////
                  //student.name.value = student.name.value.toUpperCase();
/////////////// If enire class is observable ////////////////////////////
                  // student.update((student) {
                  //   student?.name = student.name.toString().toUpperCase();
                  // });
//////////////// If individual variable are observable /////////////////
                  myController.convertToUpperCase();
                },
                child: const Text("Upper"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//////////////////////  Reactive state management Getx by using obx////////////////////////////
// class StateManagment extends StatelessWidget {
//   StateManagment({super.key});

//   var count = 0.obs;
//   void increment() {
//     count++;
//   }

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
//               Obx(
//                 () => Text(
//                   "Count value is $count",
//                   style: const TextStyle(fontSize: 25.0),
//                 ),
//               ),
//               const SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: () {
//                   increment();
//                 },
//                 child: const Text("Increment"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
