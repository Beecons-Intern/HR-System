import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/Izin/components/form_izin.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';

class IzinPage extends StatefulWidget {
  const IzinPage({Key? key}) : super(key: key);

  @override
  State<IzinPage> createState() => _IzinPageState();
}

class _IzinPageState extends State<IzinPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Izin'),
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
                'assets/images/Education.png',
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
                  child: const FormIzin(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  
  }
}
