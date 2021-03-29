import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:date_picker_timeline/extra/style.dart';
import 'package:diet_app/core/base/state/base_state.dart';
import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/constant/styles.dart';
import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:diet_app/core/widget/custom_divider.dart';
import 'package:diet_app/core/widget/meal_container.dart';
import 'package:diet_app/core/widget/rounded_linear_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CurrentDiet extends StatefulWidget {
  const CurrentDiet();

  @override
  _CurrentDietState createState() => _CurrentDietState();
}

class _CurrentDietState extends BaseState<CurrentDiet> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: null,
      appBar: AppBar(
        title: Text(
          'my_diet'.tr,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      backgroundColor: !Get.isDarkMode ? AppColors.backgroundColor : null,
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const _DatePickers(),
          const CustomDivider(height: 15),
          const _Header(),
          const CustomDivider(height: 15),
          const _OnWhichDiet(),
          const CustomDivider(height: 15),
          const _Breakfast(),
          const CustomDivider(height: 15),
          const _EarlySnack(),
          const CustomDivider(height: 15),
          const _Lunch(),
          const CustomDivider(height: 15),
          const _LateSnack(),
          const CustomDivider(height: 15),
          const _Dinner(),
          const CustomDivider(height: 15),
        ],
      ),
    );
  }
}


class _DatePickers extends StatelessWidget {
  const _DatePickers();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: DatePicker(
        DateTime.now().subtract(Duration(days: 2)),
        initialSelectedDate: DateTime.now(),
        selectionColor: AppColors.primarySwatch,
        selectedTextColor: Colors.white,
        dateTextStyle: defaultDateTextStyle.copyWith(
            color: Theme.of(context).textTheme.bodyText1.color),
        dayTextStyle: defaultDayTextStyle.copyWith(
            color: Theme.of(context).textTheme.bodyText1.color),
        monthTextStyle: defaultMonthTextStyle.copyWith(
            color: Theme.of(context).textTheme.bodyText1.color),
        onDateChange: (date) {
          print(date);
        },
        locale: 'tr_TR',
        activeDates: [
          DateTime.now().subtract(Duration(days: 1)),
          DateTime.now().subtract(Duration(days: 2)),
          DateTime.now(),
          DateTime.now().add(Duration(days: 1)),
          DateTime.now().add(Duration(days: 2)),
        ],
        deactivatedColor: Colors.grey,
        daysCount: 62,
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          Container(
            height: 200,
            child: Row(
              children: [
                Container(
                  height: double.infinity,
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.chevron_left,
                      size: 50,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .color
                          .withOpacity(0.7),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: SleekCircularSlider(
                      appearance: CircularSliderAppearance(
                          customWidths: CustomSliderWidths(
                              progressBarWidth: 10, trackWidth: 5),
                          customColors: CustomSliderColors(
                            progressBarColor:
                                AppColors.app_color.withOpacity(0.7),
                          ),
                          size: MediaQuery.of(context).size.width * 0.4,
                          angleRange: 360,
                          startAngle: 270,
                          infoProperties: InfoProperties(
                              bottomLabelText: 'calorie'.tr,
                              modifier: (percentage) => '732',
                              mainLabelStyle: kMainLabelStyle)),
                      min: 0,
                      max: 100,
                      initialValue: 43,
                    ),
                  ),
                ),
                Container(
                  height: double.infinity,
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.chevron_right,
                      size: 50,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .color
                          .withOpacity(0.7),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    child: Column(
                      children: [
                        Text(
                          '542',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primarySwatch),
                        ),
                        Text(
                          'calorie_consumed'.tr,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                VerticalDivider(),
                Expanded(
                  child: Container(
                    height: 180,
                    child: Column(
                      children: [
                        Text(
                          '1548',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primarySwatch),
                        ),
                        Text(
                          'daily_calorie_aim'.tr,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _OnWhichDiet extends StatelessWidget {
  const _OnWhichDiet();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.only(top: 15, bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Image.asset(
                'assets/icons/diet.png',
                width: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Text(
                  'Diyet Ismi 123',
                  style: null,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  AppIcons.pencil_alt,
                  size: 20,
                  color: AppColors.primarySwatch,
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'protein'.tr,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '24/77 g',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 10,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: AppRoundedLinearProgressIndicator(
                          value: 0.57,
                          color: AppColors.primarySwatch,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'carbohydrate'.tr,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '52/194 g',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 10,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: AppRoundedLinearProgressIndicator(
                          value: 0.3,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'fat'.tr,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '12/58 g',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 10,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: AppRoundedLinearProgressIndicator(
                          value: 0.46,
                          color: Colors.yellow[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _Breakfast extends StatelessWidget {
  const _Breakfast();

  @override
  Widget build(BuildContext context) {
    return MealContainer(
      title: 'breakfast'.tr,
      asset: 'assets/icons/breakfast.png',
      calorie: 472,
      calorieGained: 115,
    );
  }
}

class _EarlySnack extends StatelessWidget {
  const _EarlySnack();

  @override
  Widget build(BuildContext context) {
    return MealContainer(
      title: 'snack'.tr,
      asset: 'assets/icons/early_snack.png',
      calorie: 103,
      calorieGained: 78,
    );
  }
}

class _Lunch extends StatelessWidget {
  const _Lunch();

  @override
  Widget build(BuildContext context) {
    return MealContainer(
      title: 'lunch'.tr,
      asset: 'assets/icons/lunch.png',
      calorie: 623,
      calorieGained: 259,
    );
  }
}

class _LateSnack extends StatelessWidget {
  const _LateSnack();

  @override
  Widget build(BuildContext context) {
    return MealContainer(
      title: 'snack'.tr,
      asset: 'assets/icons/late_Snack.png',
      calorie: 128,
      calorieGained: 64,
    );
  }
}

class _Dinner extends StatelessWidget {
  const _Dinner();

  @override
  Widget build(BuildContext context) {
    return MealContainer(
      title: 'dinner'.tr,
      asset: 'assets/icons/dinner.png',
      calorie: 389,
      calorieGained: 350,
    );
  }
}
