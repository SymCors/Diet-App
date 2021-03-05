import 'package:get/get.dart';

class FormFieldsViewModel extends GetxController{
  var isObscure = true.obs();
  var isChecked = true.obs();

  void changeIsObscure(bool value){
    isObscure = value;
    update();
  }

  void changeIsChecked(bool value){
    isChecked = value;
    update();
  }

  void signUp(){
    Get.toNamed('sign_up');
  }
}