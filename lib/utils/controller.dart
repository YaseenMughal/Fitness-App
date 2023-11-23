import 'package:get/get.dart';

class UserController extends GetxController {
  var name = "".obs;
  var email = "".obs;
  var phone = "".obs;

  void updateUser(
      {required String name, required String email, required String phone}) {
    this.name.value = name;
    this.email.value = email;
    this.phone.value = phone;
  }
}
