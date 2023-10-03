import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

// ////////// Better Approach //////////////
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
  // var count = 0;
  // void increment() {
  //   count++;
  //   update(['txtCount']);
  // }

////////////////// Workers trigger specific callbacks when an event occurs //////////////////
  // var count = 0.obs;
  // void increment() {
  //   count++;
  // }

  // @override
  // void onInit() {
  //   super.onInit();
//  ///////// called every time when the value of count variable chages //////////////
  // ever(count, (_) => print(count));

//  ///////// Called every time when the value of any variable from the list changes //////////////////
  // everAll([count], (callback) => print(count));

//  ////////// Called only once when the variable value changes ////////////////
  // once(count, (callback) => print(count));

//  /////////// Called every time the user stops typing for  1 second //////////////
  // debounce(
  //     count,
  //     (callback) =>
  //         print("Called every time the user stops typing for  1 second"),
  //     time: Duration(seconds: 1));

//  ////////// imagine  that the user can earn coins by clicking on something, ////////////////
//  ////////// If he clicked 300 times in the same minute, //////////////
//  ////////// he would have 300 coins, using interval, ////////////////
//  ////////// you can set a time frame for 3 seconds, /////////////////
//  /////////// and even than clicking 300 or a thousand times, //////////
//  /////////// the maximum he would get in 1 minute would be 20 coins, ///////////
//  /////////// clicking 300 0r 1 million times
  // interval(count, (callback) => print("Nayan Moradiya"),
  //     time: Duration(seconds: 3));

// //////////////// translator controller internationalization ////////////////////

  // void changeLanguage(String param1, String param2) {
  //   var locale = Locale(param1, param2);
  //   Get.updateLocale(locale);
  // }

// //////////////// sharedPreference /////////////////
  void incrementCounter() async {
    SharedPreferences prefes = await SharedPreferences.getInstance();
    int counter = (prefes.getInt('counter') ?? 0) + 1;
    print('Presses $counter times.');
    await prefes.setInt('counter', counter);
  }
 
}
