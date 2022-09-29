import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class BuildContent extends StatelessWidget {
  const BuildContent({
    Key? key,
    required this.size,
    required this.showImages,
    required this.title,
    required this.subTitle,
    this.isLast = false,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final String showImages;
  final String title;
  final String subTitle;
  final bool isLast;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.5,
          child: Image.asset(showImages),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: size.height * 0.16),
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: heading1(neutral800, semibold),
              ),
              const SizedBox(height: 10),
              Text(
                subTitle,
                style: text2(neutral800, regular),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                left: 20,
                bottom: 30,
                child: isLast == true
                    ? const Text("")
                    : Text(
                        "Skip",
                        style: text3(neutral800, regular),
                      ),
              ),
              Positioned(
                right: 20,
                bottom: 20,
                child: FloatingActionButton(
                  onPressed: onTap,
                  backgroundColor: isLast == true ? primary300 : neutral800,
                  child: Icon(
                    Icons.arrow_forward,
                    color: isLast == true ? neutral800 : primary300,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
