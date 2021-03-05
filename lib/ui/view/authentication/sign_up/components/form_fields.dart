import 'package:diet_app/core/widget/text_input.dart';
import 'package:diet_app/ui/viewmodel/authentication/sign_up/components/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormFields extends StatelessWidget {
  final viewModel = SignUpFormFieldsViewModel();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image(
              image: AssetImage('assets/images/sign_up/profile_photo.png'),
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          AppTextInput(
            marginTop: 20,
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                hintText: 'İsim Soyisim',
              ),
            ),
          ),
          AppTextInput(
            marginTop: 20,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                hintText: 'Mail Adresi',
              ),
            ),
          ),
          AppTextInput(
            marginTop: 20,
            child: GetBuilder<SignUpFormFieldsViewModel>(
              init: SignUpFormFieldsViewModel(),
              builder: (controller) => TextField(
                keyboardType: TextInputType.visiblePassword,
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
          AppTextInput(
            marginTop: 20,
            child: GetBuilder<SignUpFormFieldsViewModel>(
              init: SignUpFormFieldsViewModel(),
              builder: (controller) => TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: controller.isObscure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  hintText: 'Şifre Tekrar',
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
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('sign_up'.tr),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
