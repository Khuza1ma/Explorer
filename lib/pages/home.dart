import 'package:explorer/pages/containers/container2.dart';
import 'package:explorer/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_images.dart';
import '../utils/constants.dart';
import 'containers/container1.dart';
import 'containers/container3.dart';
import 'containers/container4.dart';
import 'containers/container5.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: SvgPicture.asset(AppImages.mainLogo,height: 50,width: 50,),
            ),
            ListTile(
              title: const Text('Features'),
              onTap: () {
                // Handle the action
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('About us'),
              onTap: () {
                // Handle the action
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Pricing'),
              onTap: () {
                // Handle the action
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Feedback'),
              onTap: () {
                // Handle the action
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        decoration: const BoxDecoration(),
        child: const Column(
          children: [
            NavBar(),
            Container1(),
            Container2(),
            Container3(),
            Container4(),
            Container5(),
          ],
        ),
      )),
    );
  }
}
