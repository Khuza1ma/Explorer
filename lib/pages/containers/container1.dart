import 'package:explorer/utils/app_images.dart';
import 'package:explorer/utils/colors.dart';
import 'package:explorer/utils/widget_ext.dart';
import 'package:explorer/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => desktopContainer(),
      mobile: (BuildContext context) => mobileContainer(),
    );
  }

  Container desktopContainer() => Container(
    height: h,
    margin: const EdgeInsets.symmetric(horizontal: 165,vertical: 110),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Track your\nExpenses to\nSave Money',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 96,
                        height: 1.2,
                      ),
                    ),
                    20.verticalSpace,
                    const Text(
                      'Helps you to organize your income and expenses',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: AppColors.kBDBDBD),
                    ),
                    40.verticalSpace,
                    Row(
                      children: [
                        MainButton.icon(
                          onPressed: () {},
                          text: 'Try free demo',
                          minimumSize: const Size(225, 75),
                          icon: const Icon(Icons.keyboard_arrow_down_sharp),
                        ),
                        25.horizontalSpace,
                        const Text(
                          '— Web, iOs and Android',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: AppColors.kBDBDBD),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(child: SvgPicture.asset(AppImages.landingImage))
          ],
        ),
      );
  Container mobileContainer() => Container(
    padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: w!/1.4,
              child: SvgPicture.asset(AppImages.landingImage,fit: BoxFit.contain),
            ),
            const Center(
              child: Text(
                'Track your Expenses\nto Save Money',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 45,
                  height: 1.2,
                ),
              ),
            ),
            20.verticalSpace,
            const Text(
              'Helps you to organize your income and expenses',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.kBDBDBD),
            ),
            40.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainButton.icon(
                  onPressed: () {},
                  text: 'Try free demo',
                  minimumSize: const Size(180, 55),
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                ),
                const Text(
                  '— Web, iOs and Android',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.kBDBDBD),
                ),
              ],
            ),

          ],
        ),
      );
}
