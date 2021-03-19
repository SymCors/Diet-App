import 'package:diet_app/core/base/state/base_state.dart';
import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/widget/message_action_button.dart';
import 'package:diet_app/core/widget/message_app_bar.dart';
import 'package:diet_app/core/widget/message_input_box.dart';
import 'package:diet_app/ui/viewmodel/home/messages/message_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/his_message_ui.dart';
import 'components/message_date_ui.dart';
import 'components/my_message_ui.dart';

class MessageUI extends StatefulWidget {
  const MessageUI();

  @override
  _MessageUIState createState() => _MessageUIState();
}

class _MessageUIState extends BaseState<MessageUI> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Get.put(MessageUIViewModel());
    return BaseView(
      viewModel: viewModel,
      backgroundColor: !Get.isDarkMode ? AppColors.backgroundColor : null,
      onPageBuilder: (context, viewModel) => body(viewModel),
    );
  }
}

class body extends StatelessWidget {
  final viewModel;

  const body(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppMessageAppBar(
          nameSurname: 'Name Surname',
          status: 'Online',
        ),
        SizedBox(height: 1),
        Expanded(
          child: SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: viewModel.numbers.length,
              itemBuilder: (context, index) {
                if (index % 5 == 0) {
                  return const MessageDateUI();
                }
                return index % 2 == 0
                    ? const MyMessageUI()
                    : const HisMessageUI();
              },
            ),
          ),
        ),
        SizedBox(height: 1),
        MessageInputBox(
          prefix: MessageActionButton(
            iconData: Icons.add,
            iconSize: 24.0,
          ),
          roundedCorners: true,
          suffix: MessageActionButton(
            iconData: Icons.image,
            iconSize: 24.0,
          ),
        )
      ],
    );
  }
}
