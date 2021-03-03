import 'package:flutter/material.dart';
import 'package:diet_app/core/base/state/base_state.dart';
import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/init/language/language_manager.dart';
import 'package:diet_app/ui/viewmodel/authentication/onboard/onboard.dart';
import 'package:get/get.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends BaseState<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModel: Get.put(OnBoardViewModel()),
        onPageBuilder: (context, viewModel) {
          return Column(
            children: [
              Image(
                image: AssetImage('assets/images/welcome.png'),
              ),
              Text('welcome'.tr, style: TextStyle(color: Colors.blue, fontSize: 25),),
              RaisedButton(
                onPressed: () {
                  LanguageManager.changeLocale('turkish');
                },
                child: Text('Degistir'),
              ),
            ],
          );
        },
    );
  }
}
