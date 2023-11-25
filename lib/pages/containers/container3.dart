import 'package:explorer/utils/colors.dart';
import 'package:explorer/utils/widget_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/app_images.dart';
import '../../utils/constants.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => buildMobileView(),
      desktop: (BuildContext context) => buildDesktopView(),
    );
  }

  Container buildDesktopView() => Container(
        width: w,
        height: h,
        padding: const EdgeInsets.all(150),
        decoration: const BoxDecoration(color: AppColors.kFFFFFF),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'ALWAYS ONLINE',
                  style: TextStyle(color: AppColors.kD9D9D9, fontSize: 22),
                ),
                24.verticalSpace,
                const Text(
                  'Real-time\nsupport\nwith cloud',
                  style: TextStyle(
                      color: AppColors.k000000,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
                24.verticalSpace,
                const Text(
                  'Tellus lacus morbi sagittis lacus in. Amet nisl at'
                  '\nmauris enim accumsan nisi, tincidunt vel.'
                  '\nEnim ipsum, amet quis ullamcorper eget ut.',
                  style: TextStyle(
                    color: AppColors.kD9D9D9,
                    fontSize: 22,
                  ),
                ),
                24.verticalSpace,
                Row(
                  children: [
                    const Text(
                      'Learn more',
                      style: TextStyle(
                        color: AppColors.kFF7235,
                        fontSize: 22,
                      ),
                    ),
                    10.horizontalSpace,
                    const Icon(Icons.arrow_forward,color: AppColors.kFF7235,)
                  ],
                ),
              ],
            ),
            180.horizontalSpace,
            SvgPicture.asset(AppImages.realtime),
          ],
        ),
      );

  Container buildMobileView() => Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: AppColors.kFFFFFF),
        child: Column(
          children: [
            SvgPicture.asset(AppImages.realtime,height: h!/4,),
            20.horizontalSpace,
            const Text(
              'ALWAYS ONLINE',
              style: TextStyle(color: AppColors.kD9D9D9, fontSize: 14),
            ),
            5.verticalSpace,
             const Text(
               textAlign: TextAlign.center,
              'Real-time support\nwith cloud',
              style: TextStyle(
                  color: AppColors.k000000,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),

            5.verticalSpace,
            const Text(
              'Tellus lacus morbi sagittis lacus in. Amet nisl at'
                  '\nmauris enim accumsan nisi, tincidunt vel.'
                  '\nEnim ipsum, amet quis ullamcorper eget ut.',
              style: TextStyle(
                color: AppColors.kD9D9D9,
                fontSize: 14,
              ),
            ),
            5.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Learn more',
                  style: TextStyle(
                    color: AppColors.kFF7235,
                    fontSize: 14,
                  ),
                ),
                10.horizontalSpace,
                const Icon(Icons.arrow_forward,color: AppColors.kFF7235,)
              ],
            ),
          ],
        ),
      );
}
