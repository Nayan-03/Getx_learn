import 'package:get/get.dart';
import 'package:getx_learn/student.dart';

class MyController extends GetxController {
  var student = Student();
  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }
}
