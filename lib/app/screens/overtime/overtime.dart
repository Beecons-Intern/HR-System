import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import 'components/form_overtime.dart';

class OvertimeScreen extends StatefulWidget {
  const OvertimeScreen({Key? key}) : super(key: key);

  @override
  State<OvertimeScreen> createState() => _OvertimeScreenState();
}

class _OvertimeScreenState extends State<OvertimeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Overtime'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      backgroundColor: neutral800,
      // resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 0,
            child: ZoomIn(
              duration: const Duration(seconds: 2),
              delay: const Duration(milliseconds: 0),
              from: 1,
              child: Image.asset(
                'assets/images/overtime.png',
                height: size.height * 0.3,
                width: size.width,
              ),
            ),
          ),
          FadeInUp(
            duration: const Duration(seconds: 2),
            delay: const Duration(milliseconds: 0),
            child: DraggableScrollableSheet(
              initialChildSize: 0.6,
              minChildSize: 0.6,
              maxChildSize: 0.6,
              builder: (context, controller) => ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: SingleChildScrollView(
                  controller: controller,
                  child: const FormOverTime(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
