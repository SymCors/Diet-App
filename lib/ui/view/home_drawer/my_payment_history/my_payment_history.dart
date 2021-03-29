import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/widget/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/card_section.dart';
import 'components/payments.dart';

class MyPaymentHistory extends StatefulWidget {
  const MyPaymentHistory();

  @override
  _MyPaymentHistoryState createState() => _MyPaymentHistoryState();
}

class _MyPaymentHistoryState extends State<MyPaymentHistory> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: null,
      appBar: AppBar(
        title: Text(
          'my_payment_history'.tr,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      onPageBuilder: (context, value) => const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CardSection(),
          const CustomDivider(),
          const Payments(),
        ],
      ),
    );
  }
}
