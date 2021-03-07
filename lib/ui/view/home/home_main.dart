import 'package:diet_app/core/base/view/base_view.dart';
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
      onPageBuilder: (context, value) => body(context),
    );
  }

  Widget body(BuildContext context) {
    return GetBuilder<HomeMainViewModel>(
      init: HomeMainViewModel(),
      builder: (controller) => Scaffold(
        body: controller.body,
        bottomNavigationBar: TitledBottomNavigationBar(
          currentIndex: controller.page.value,
          // Use this to update the Bar giving a position
          onTap: (index) {
            controller.changePage(index);
          },
          items: [
            TitledNavigationBarItem(title: Text('home'.tr), icon: Icons.home),
            TitledNavigationBarItem(
                title: Text('search'.tr), icon: Icons.search),
            TitledNavigationBarItem(
                title: Text('message'.tr), icon: Icons.message_outlined),
            TitledNavigationBarItem(
                title: Text('exercise'.tr), icon: Icons.sports),
            TitledNavigationBarItem(
                title: Text('profile'.tr), icon: Icons.person_outline),
          ],
          reverse: true,
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(viewModel.pageName),
          actions: [
            IconButton(icon: Icon(Icons.notifications_none), onPressed: (){})
          ],
        ),
        drawer: NavigationDrawer(),
      ),
    );
  }
}
