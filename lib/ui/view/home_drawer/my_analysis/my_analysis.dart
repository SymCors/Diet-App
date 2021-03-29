import 'package:diet_app/core/base/state/base_state.dart';
import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAnalysis extends StatefulWidget {
  const MyAnalysis();

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
      onPageBuilder: (context, value) => const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10, // change according to the viewmodel
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.only(
                  topRight: const Radius.circular(10),
                  bottomRight: const Radius.circular(10),
                ),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/icons/medical_analysis_2.png'),
                ),
                title: Text('Kan Tahlili'),
                subtitle: Text(
                  '18/03/2021',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(fontSize: 13, color: Colors.grey),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
