import 'package:diet_app/ui/viewmodel/authentication/login/components/form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormFields extends StatelessWidget {
  final viewModel = Get.put(FormFieldsViewModel());

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ContainerClass(
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
          ContainerClass(
            marginTop: 20,
            child: GetBuilder<FormFieldsViewModel>(
              init: FormFieldsViewModel(),
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
          GetBuilder<FormFieldsViewModel>(
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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10),
                textStyle: TextStyle(fontSize: 17),
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

class ContainerClass extends StatelessWidget {
  final Widget child;
  final double marginTop;

  ContainerClass({this.child, this.marginTop});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: child,
      ),
    );
  }
}
