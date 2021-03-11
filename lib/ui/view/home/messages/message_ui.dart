import 'package:diet_app/core/base/state/base_state.dart';
import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/widget/circular_image.dart';
import 'package:diet_app/core/widget/message_app_bar.dart';
import 'package:diet_app/ui/viewmodel/home/messages/message_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'components/his_message_ui.dart';
import 'components/my_message_ui.dart';

class MessageUI extends StatefulWidget {
  @override
  _MessageUIState createState() => _MessageUIState();
}

class _MessageUIState extends BaseState<MessageUI> {
  final viewModel = Get.put(MessageUIViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: viewModel,
      onPageBuilder: (context, value) => body(),
      backgroundColor: Color(0xfff7f6fb),
    );
  }

  Widget body() {
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
                return index % 2 == 0 ? MyMessageUI() : HisMessageUI();
              },
            ),
          ),
        ),
        SizedBox(height: 1),
        MessageSender(),
      ],
    );
  }

  Widget MessageSender() {
    return Material(
      elevation: 4,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Icons.add_circle_outline,
                size: 35,
              ),
              onPressed: () {}),
          Expanded(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    maxLines: 4,
                    minLines: 1,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide: BorderSide(
                            color: Colors.blue[100],
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15, right: 15),
                        hintText: 'Write Something ...'),
                  ),
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 5),
            child: Icon(Icons.send, color: AppColors.primarySwatch,),
          ),
        ],
      ),
    );
  }
}
