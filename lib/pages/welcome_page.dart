//Custom Carousel Slider Page

// ignore_for_file: prefer_const_constructors

import 'package:cubit_state_management/core/assets_constant.dart';
import 'package:cubit_state_management/cubit/app_cubit.dart';
import 'package:cubit_state_management/misc/colors.dart';
import 'package:cubit_state_management/widget/app_large_text.dart';
import 'package:cubit_state_management/widget/app_text.dart';
import 'package:cubit_state_management/widget/responsivebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(welcomePageImageList[index].imageUrl),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trips"),
                      AppText(text: "Mountain", size: 30),
                      SizedBox(height: 20),
                      Container(
                        width: 240,
                        child: AppText(
                          text:
                              "Mountain hikes give you an incredible sense of freedom along with endurance tests",
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<AppCubit>(context).getData();
                        },
                        child: Container(
                          width: 200,
                          child: Row(
                            children: [
                              ResponsiveButton(
                                width: 120,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots
                              ? AppColors.mainColor
                              : AppColors.mainColor.withOpacity(0.3),
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
