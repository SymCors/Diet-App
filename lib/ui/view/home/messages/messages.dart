import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/routes.dart';
import 'package:diet_app/core/widget/circular_image.dart';
import 'package:diet_app/ui/viewmodel/home/messages/messages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  final viewModel = Get.put(MessagesViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: viewModel,
      onPageBuilder: (context, value) => body(context),
    );
  }

  Widget body(BuildContext context) {
    return Container(
      child: Center(
        child: ListView.separated(
          separatorBuilder: (context, index) => Container(
            margin: EdgeInsets.only(left: 72.8),
            child: Divider(
              height: 1,
            ),
          ),
          shrinkWrap: true,
          itemCount: viewModel.names.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Get.toNamed(Routes.message_ui);
              },
              leading: AppCircularImage(
                radius: 20,
              ),
              title: Text('deneme'),
              subtitle: Text('deneme'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('2 min'),
                  Visibility(
                    visible: false,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.red,
                        child: Text('5'),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: false,
                    child: Icon(Icons.done),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
