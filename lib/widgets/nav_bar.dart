import 'package:explorer/utils/colors.dart';
import 'package:explorer/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileNavBar(),
      desktop: (BuildContext context) => DesktopNavBar(),
    );
  }

  Widget MobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(Icons.menu)],
      ),
    );
  }

  Widget DesktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 40,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: () {},
              child: const Text(
                'Request a Demo',
                style: TextStyle(color: AppColors.kFF7235),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container navLogo() {
    return Container(
      width: 110,
      child: SvgPicture.asset('assets/images/logo.svg'),
    );
  }

  Container navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
