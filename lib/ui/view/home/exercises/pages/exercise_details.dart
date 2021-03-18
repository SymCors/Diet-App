import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/routes.dart';
import 'package:diet_app/core/widget/info_button.dart';
import 'package:diet_app/ui/viewmodel/home/exercises/pages/exercise_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExerciseDetails extends StatefulWidget {
  @override
  _ExerciseDetailsState createState() => _ExerciseDetailsState();
}

class _ExerciseDetailsState extends State<ExerciseDetails> {
  final viewModel = Get.put(ExerciseDetailsViewModel());

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: viewModel,
      onPageBuilder: (context, value) => body(),
    );
  }

  Widget body() {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          pinned: true,
          floating: false,
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'Deneme',
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
            background: Container(
                decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken),
                image: AssetImage(
                  'assets/images/sign_up/background.webp',
                ),
              ),
            )),
            stretchModes: [
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle,
            ],
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          titleTexts(),
          Buttons(),
          exercises_title(),
          exercises(context),
        ])),
      ],
    );
  }

  Widget titleTexts() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Yoga Programı',
            style: Theme.of(context).textTheme.headline6,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Vücut dengesini geliştirmek ve direnci artırmak için ideal.',
            ),
          ),
        ],
      ),
    );
  }

  Widget Buttons() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Row(
        children: [
          AppButtonInfo(
            icon: Icons.timer_sharp,
            backgroundColor: Colors.blue[100],
            foregroundColor: Colors.blue,
            text: '15 dk.',
          ),
          SizedBox(
            width: 15,
          ),
          AppButtonInfo(
            icon: Icons.timer_sharp,
            backgroundColor: Colors.orange[100],
            foregroundColor: Colors.orange,
            text: '7 hareket',
          ),
          SizedBox(
            width: 15,
          ),
          AppButtonInfo(
            icon: Icons.timer_sharp,
            backgroundColor: Colors.red[100],
            foregroundColor: Colors.red,
            text: '400 Kal.',
          ),
        ],
      ),
    );
  }

  Widget exercises_title() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'exercises'.tr,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }

  Widget exercises(context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: viewModel.names.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Get.toNamed(Routes.exercise_details_view);
          },
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset('assets/images/login/background.webp'),
          ),
          title: Text(
            'exercises'.tr,
          ),
          subtitle: Text(
            '03:27 dk.',
            style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .color
                    .withOpacity(0.6)),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.green[100])),
              onPressed: null,
              child: Text(
                'Finished',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
        );
      },
    );
  }
}
