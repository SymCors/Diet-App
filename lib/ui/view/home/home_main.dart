import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/widget/navigation_drawer.dart';
import 'package:diet_app/ui/viewmodel/home/home_main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import 'package:get/utils.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  final viewModel = Get.put(HomeMainViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: viewModel,
      backgroundColor: !Get.isDarkMode ? AppColors.backgroundColor : null,
      onPageBuilder: (context, value) => body(context),
    );
  }

  Widget body(BuildContext context) {
    return GetBuilder<HomeMainViewModel>(
      init: HomeMainViewModel(),
      builder: (controller) => Scaffold(
        body: controller.body,
        bottomNavigationBar: TitledBottomNavigationBar(
          activeColor: Theme.of(context).primaryColor,
          inactiveColor: Theme.of(context).textTheme.bodyText2.color,

          currentIndex: controller.page.value,
          // Use this to update the Bar giving a position
          onTap: (index) {
            controller.changePage(index);
          },
          items: [
            TitledNavigationBarItem(title: Text('home'.tr), icon: Icons.home, backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
            TitledNavigationBarItem(
                title: Text('search'.tr), icon: Icons.search, backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
            TitledNavigationBarItem(
                title: Text('message'.tr), icon: Icons.message_outlined, backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
            TitledNavigationBarItem(
                title: Text('exercise'.tr), icon: Icons.directions_run_outlined, backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
            TitledNavigationBarItem(
                title: Text('profile'.tr), icon: Icons.person_outline, backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
          ],
          reverse: true,
        ),
        appBar: AppBar(
          title: Text(viewModel.pageName, style: Theme.of(context).appBarTheme.titleTextStyle,),
          actions: [
            IconButton(icon: Icon(Icons.notifications_none), onPressed: (){})
          ],
        ),
        drawer: NavigationDrawer(),
      ),
    );
  }
}
