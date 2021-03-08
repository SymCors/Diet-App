import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/constant/routes.dart';
import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:diet_app/core/widget/circular_image.dart';
import 'package:diet_app/ui/viewmodel/home/exercises/components/programs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Programs extends StatelessWidget {
  final viewModel = Get.put(ProgramsViewModel());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        programs_title(),
        program_lists(),
      ],
    );
  }

  Widget programs_title() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'programs'.tr,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'see_all'.tr,
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }

  Widget program_lists() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: viewModel.names.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: (){
            Get.toNamed(Routes.exercise_details);
          },
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset('assets/images/login/background.webp'),
          ),
          title: Text(
            'Yoga Programı',
            style: TextStyle(color: AppColors.titleColors),
          ),
          subtitle: Text('6 gün  •  380 cal'),
          trailing: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(AppIcons.heart_empty, size: 20,),
          ),
        );
      },
    );
  }
}
