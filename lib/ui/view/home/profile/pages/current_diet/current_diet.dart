import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:diet_app/core/base/state/base_state.dart';
import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/constant/colors.dart';
import 'package:diet_app/core/constant/styles.dart';
import 'package:diet_app/core/init/icon/app_icons.dart';
import 'package:diet_app/core/widget/meal_container.dart';
import 'package:diet_app/core/widget/rounded_linear_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CurrentDiet extends StatefulWidget {
  @override
  _CurrentDietState createState() => _CurrentDietState();
}

class _CurrentDietState extends BaseState<CurrentDiet> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: null,
      onPageBuilder: (context, value) => home(),
    );
  }

  Widget home() {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('my_diet'.tr),
      ),
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          date_picker(),
          SizedBox(height: 15),
          header(),
          SizedBox(height: 15),
          on_which_diet(),
          SizedBox(height: 15),
          breakfast(),
          SizedBox(height: 15),
          early_snack(),
          SizedBox(height: 15),
          lunch(),
          SizedBox(height: 15),
          late_snack(),
          SizedBox(height: 15),
          dinner(),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget date_picker() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: DatePicker(
        DateTime.now().subtract(Duration(days: 2)),
        initialSelectedDate: DateTime.now(),
        selectionColor: AppColors.primarySwatch,
        selectedTextColor: Colors.white,
        onDateChange: (date) {
          print(date);
        },
        locale: 'tr_TR',
        activeDates: [
          DateTime(2021, 03, 10),
          DateTime(2021, 03, 11),
          DateTime(2021, 03, 12),
        ],
        deactivatedColor: Colors.grey,
        daysCount: 62,
      ),
    );
  }

  Widget header() {
    return Container(
      color: Colors.white,
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
                      )),
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
                          size: dynamicWidht(0.4),
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

  Widget on_which_diet() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 15, bottom: 20),
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
                  style: kSearchTitleStyle,
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
                        margin: EdgeInsets.symmetric(horizontal: 20),
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
                        margin: EdgeInsets.symmetric(horizontal: 20),
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
                        margin: EdgeInsets.symmetric(horizontal: 20),
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

  Widget breakfast() {
    return MealContainer(
      title: 'breakfast'.tr,
      asset: 'assets/icons/breakfast.png',
      calorie: 472,
      calorieGained: 115,
    );
  }

  Widget early_snack() {
    return MealContainer(
      title: 'snack'.tr,
      asset: 'assets/icons/early_snack.png',
      calorie: 103,
      calorieGained: 78,
    );
  }

  Widget lunch() {
    return MealContainer(
      title: 'lunch'.tr,
      asset: 'assets/icons/lunch.png',
      calorie: 623,
      calorieGained: 259,
    );
  }

  Widget late_snack() {
    return MealContainer(
      title: 'snack'.tr,
      asset: 'assets/icons/late_Snack.png',
      calorie: 128,
      calorieGained: 64,
    );
  }

  Widget dinner() {
    return MealContainer(
      title: 'dinner'.tr,
      asset: 'assets/icons/dinner.png',
      calorie: 389,
      calorieGained: 350,
    );
  }
}
