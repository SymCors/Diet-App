import 'package:diet_app/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardSection extends StatelessWidget {
  const CardSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: AppColors.primarySwatch,
        child: Container(
          width: double.infinity,
          height: 165,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                '75.0 ₺',
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'total_paid'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: Colors.grey[300], fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '0.0 ₺',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'earnings'.tr,
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Colors.grey[300],
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '3 Ay',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'last_paid'.tr,
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Colors.grey[300],
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '12.0 ₺',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'saved'.tr,
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Colors.grey[300],
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
