// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import '../../utilities/colors.dart';
import 'components/form_cuti.dart';

class CutiPage extends StatefulWidget {
  const CutiPage({Key? key}) : super(key: key);

  @override
  State<CutiPage> createState() => _CutiPageState();
}

class _CutiPageState extends State<CutiPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Cuti'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      backgroundColor: neutral800,
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
                'assets/images/Cuti.png',
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
                  child: const FormCuti(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
