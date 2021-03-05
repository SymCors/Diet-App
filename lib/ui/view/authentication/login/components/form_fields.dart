import 'package:diet_app/core/widget/text_input.dart';
import 'package:diet_app/ui/viewmodel/authentication/login/components/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormFields extends StatelessWidget {
  final viewModel = Get.put(LoginFormFieldsViewModel());

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppTextInput(
            marginTop: 0,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                hintText: 'Mail Adresiniz',
              ),
            ),
          ),
          AppTextInput(
            marginTop: 20,
            child: GetBuilder<LoginFormFieldsViewModel>(
              init: LoginFormFieldsViewModel(),
              builder: (controller) => TextField(
                obscureText: controller.isObscure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  hintText: 'Şifreniz',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye_rounded),
                    onPressed: () {
                      controller.changeIsObscure(!controller.isObscure);
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          GetBuilder<LoginFormFieldsViewModel>(
            builder: (controller) => Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Checkbox(
                            value: controller.isChecked,
                            onChanged: (value) {
                              controller.changeIsChecked(value);
                            },
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.changeIsChecked(!controller.isChecked);
                            },
                            child: Text('remember_me'.tr),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text('password_forgotten'.tr),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                viewModel.login();
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('login'.tr),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: (){
              viewModel.signUp();
            },
            child: Container(
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: 'not_have_account'.tr),
                    TextSpan(text: ' '),
                    TextSpan(
                      text: 'sign_up_now'.tr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}