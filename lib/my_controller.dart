import 'package:get/get.dart';

class MyController extends GetxController {
  // var student = Student();
  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

// ////////////////// calling of the constructor //////////////
  // var student = Student(name: "Nayan", age: 25).obs;
  // void convertUpperCase() {
  //   student.update((student) {
  //     student?.name = student.name.toString().toUpperCase();
  //   });

// //////////// Reactive state manager in controller type //////////////////
  // var count = 0.obs;
  // void increment() {
  //   count++;
  // }

// ///////////// Simpale State manager in controller type ///////////////////
  // var count = 0;
  // void increment() {
  //   count++;
  //   update();
  // }

// ///////////// Getx controller lifecycle method ///////////////////
  // var count = 0;
  // void increment() async {
  //   await Future<int>.delayed(const Duration(milliseconds: 5000));
  //   count++;
  //   update();
  // }

  // void cleanUpTask() {
  //   print("Clean up task");
  // }

  //            ////////// Better Approach //////////////
  // @override
  // void onInit() {
  //   print("Init Cakked");
  //   super.onInit();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

// /////////// Getx unique id //////////////////
  var count = 0;
  void increment() {
    count++;
    update(['txtCount']);
  }
}
