import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/constant/routes.dart';
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
      padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
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
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        clipBehavior: Clip.none,
        children: List.generate(13, (index) {
          return InkWell(
            onTap: (){
              Get.toNamed(Routes.exercise_details);
            },
            child: Card(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                          AssetImage('assets/images/sign_up/background.webp'),
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Opacity(
                      opacity: 0.7,
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        height: 25,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text('Yoga', style: TextStyle(color: AppColors.primarySwatch),),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
