// ignore_for_file: sized_box_for_whitespace

import 'package:cubit_state_management/cubit/app_cubit.dart';
import 'package:cubit_state_management/misc/colors.dart';
import 'package:cubit_state_management/widget/app_button.dart';
import 'package:cubit_state_management/widget/app_large_text.dart';
import 'package:cubit_state_management/widget/app_text.dart';
import 'package:cubit_state_management/widget/responsivebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        DetailState detail = state as DetailState;
        return Scaffold(
          body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: double.maxFinite,
                    height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage("http://mark.bslmeiyu.com/uploads/" +
                          detail.place.img),
                    )),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 50,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<AppCubit>(context).goHome();
                          },
                          icon: const Icon(Icons.menu),
                          color: Colors.white),
                    ],
                  ),
                ),
                Positioned(
                  top: 310,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(
                                text: detail.place.name,
                                color: Colors.black.withOpacity(0.8)),
                            AppLargeText(
                                text: "\$" + detail.place.price.toString(),
                                color: AppColors.mainColor),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.mainColor,
                            ),
                            const SizedBox(width: 5),
                            AppText(
                              text: detail.place.location,
                              color: AppColors.textColor1,
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  color: index < detail.place.stars
                                      ? AppColors.starColor
                                      : AppColors.textColor2,
                                );
                              }),
                            ),
                            AppText(
                              text: "(5.0)",
                              color: AppColors.textColor2,
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        AppLargeText(
                            text: "People",
                            color: Colors.black.withOpacity(0.8),
                            size: 20),
                        const SizedBox(height: 5),
                        AppText(
                            text: "Number of people in your group",
                            color: AppColors.mainTextColor),
                        const SizedBox(height: 10),
                        Wrap(
                          children: List.generate(5, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: AppButton(
                                  text: (index + 1).toString(),
                                  isIcon: false,
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                  backgroundColor: selectedIndex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                                  size: 50,
                                  borderColor: selectedIndex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                                ),
                              ),
                            );
                          }),
                        ),
                        const SizedBox(height: 20),
                        AppLargeText(
                            text: "Description",
                            color: Colors.black.withOpacity(0.8),
                            size: 20),
                        const SizedBox(height: 10),
                        AppText(
                          text: detail.place.description,
                          color: AppColors.mainTextColor,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Row(
                    children: [
                      AppButton(
                        color: AppColors.textColor2,
                        backgroundColor: Colors.white,
                        size: 60,
                        borderColor: AppColors.textColor2,
                        isIcon: true,
                        icon: Icons.favorite_border,
                      ),
                      const SizedBox(width: 20),
                      ResponsiveButton(
                        isResponsive: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
