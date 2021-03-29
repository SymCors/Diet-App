import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/widget/circular_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Notifications extends StatelessWidget {
  const Notifications();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      appBar: AppBar(
        title: Text(
          'notifications'.tr,
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
        return Column(
          children: [
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: AppCircularImage(
                  radius: 20,
                ),
                title: Text('Name Surname'),
                subtitle: Text('Liked your post', style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey),),
                trailing: Image.asset('assets/images/sign_up/background.webp'),
              ),
            ),
            Divider(),
          ],
        );
      },
    );
  }
}

