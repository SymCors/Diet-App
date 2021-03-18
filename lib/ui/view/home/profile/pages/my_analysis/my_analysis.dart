import 'package:diet_app/core/base/state/base_state.dart';
import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAnalysis extends StatefulWidget {
  @override
  _MyAnalysisState createState() => _MyAnalysisState();
}

class _MyAnalysisState extends BaseState<MyAnalysis> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      backgroundColor: !Get.isDarkMode ? AppColors.backgroundColor : null,
      appBar: AppBar(
        title: Text(
          'my_analysis'.tr,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      viewModel: null,
      onPageBuilder: (context, value) => body(),
    );
  }

  Widget body() {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10, // change according to the viewmodel
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                margin: EdgeInsets.only(left: 7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10),),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/icons/medical_analysis_2.png'),
                  ),
                  title: Text('Kan Tahlili'),
                  subtitle: Text('18/03/2021'),
                  trailing: Icon(Icons.chevron_right, color: Colors.deepOrange,),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}