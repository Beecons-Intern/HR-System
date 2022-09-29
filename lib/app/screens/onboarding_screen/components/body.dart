import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/route/route_name.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'build_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController controller = PageController();
  int index = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.5,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: size.height * 0.06),
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: neutral100,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(80))),
                  child: Column(
                    children: [
                      SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: const ExpandingDotsEffect(
                          spacing: 5,
                          dotColor: primary300,
                          activeDotColor: primary300,
                          dotWidth: 15,
                          dotHeight: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: size.width,
            child: PageView(
              controller: controller,
              children: [
                BuildContent(
                  onTap: () {
                    if (index == 0) {
                      setState(() {
                        index++;
                      });
                      controller.animateToPage(index,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    } else {
                      setState(() {
                        index = 1;
                      });
                      controller.animateToPage(index,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    }
                  },
                  size: size,
                  showImages:
                      'assets/images/Man delivers a parcel on a scooter.png',
                  title: 'Welcome to HR System',
                  subTitle:
                      'Explore the app, find a smart\nwat to absent realtime',
                ),
                BuildContent(
                  onTap: () {
                    if (index == 1) {
                      setState(() {
                        index++;
                      });
                      controller.animateToPage(index,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    } else {
                      setState(() {
                        index = 2;
                      });
                      controller.animateToPage(index,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                    }
                  },
                  size: size,
                  showImages:
                      'assets/images/Girl and guy preparing start-up rocket to launch with ideas.png',
                  title: 'Tracking Absent Realtime',
                  subTitle: 'It uses to absent via scanning',
                ),
                BuildContent(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, RouteName.loginScreen);
                  },
                  size: size,
                  showImages: 'assets/images/Good marketing rises income.png',
                  title: "Let's Get Started",
                  subTitle: 'You should Log in first',
                  isLast: true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
