import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Payments extends StatelessWidget {
  const Payments();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'last_payments'.tr,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(fontSize: 19, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Diyet 123',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          '15.0 ₺',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'date'.tr + ": 29 Mart 2021",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontSize: 15, color: Colors.grey[600]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'earnings'.tr + ": (%13)",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(
                                    fontSize: 15, color: Colors.grey[600]),
                          ),
                        ),
                        Text(
                          '2.0 ₺',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(fontSize: 15, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(),
                    SizedBox(height: 10,),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
