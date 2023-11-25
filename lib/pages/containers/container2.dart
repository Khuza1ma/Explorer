import 'package:explorer/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/app_images.dart';
import '../../utils/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => buildMobileView(),
      desktop: (BuildContext context) => buildDesktopView(),
    );
  }

  Container buildDesktopView() => Container(
        height: h,
        width: double.infinity,
        decoration: const BoxDecoration(color: AppColors.kFF7235),
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Positioned(
                  top: -20,
                  right: -20,
                  child: Image.asset(
                    AppImages.topstack,
                    width: 598,
                    height: 660,
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: -20,
                  child: Image.asset(
                    AppImages.bottomstack,
                    width: 598,
                    height: 660,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 165, right: 165, top: 90, bottom: 0),
                  child: Image.asset(AppImages.overview,height: h!/1.3799,width: w,),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  left: 165, right: 165, top: 80, bottom: 65),
              color: AppColors.kFFFFFF,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.facebook,
                    fit: BoxFit.contain,
                    width: 160,
                    height: 30,
                  ),
                  Image.asset(
                    AppImages.google,
                    fit: BoxFit.contain,
                    width: 160,
                    height: 30,
                  ),
                  Image.asset(
                    AppImages.cocacola,
                    fit: BoxFit.contain,
                    width: 160,
                    height: 30,
                  ),
                  Image.asset(
                    AppImages.linkdln,
                    fit: BoxFit.contain,
                    width: 160,
                    height: 30,
                  ),
                  Image.asset(
                    AppImages.samsung,
                    fit: BoxFit.contain,
                    width: 160,
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Container buildMobileView() => Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: AppColors.kFF7235),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 0),
              child: Image.asset(
                AppImages.overview,
                height: 250,
                width: w! / 1.4,
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              color: AppColors.kFFFFFF,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.facebook,
                        fit: BoxFit.contain,
                        width: 160,
                        height: 30,
                      ),
                      Image.asset(
                        AppImages.google,
                        fit: BoxFit.contain,
                        width: 160,
                        height: 30,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.cocacola,
                        fit: BoxFit.contain,
                        width: 160,
                        height: 30,
                      ),
                      Image.asset(
                        AppImages.linkdln,
                        fit: BoxFit.contain,
                        width: 160,
                        height: 30,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.samsung,
                        fit: BoxFit.contain,
                        width: 160,
                        height: 30,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
