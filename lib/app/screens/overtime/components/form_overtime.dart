import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/overtime/components/time.dart';
import 'package:intl/intl.dart';

import '../../../utilities/colors.dart';
import '../../../widgets/succes.dart';

class FormOverTime extends StatefulWidget {
  const FormOverTime({Key? key}) : super(key: key);

  @override
  State<FormOverTime> createState() => _FormOverTimeState();
}

class _FormOverTimeState extends State<FormOverTime> {
  DateTime? timeTo;
  DateTime? timeFrom;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.55,
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 20,
        top: 40,
        right: 20,
        bottom: 40,
      ),
      child: Column(
        children: [
          //Bagian From
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'From',
                    style: TextStyle(
                        color: neutral800,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),

                  //show Dialog From
                  GestureDetector(
                    onTap: (() => showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: neutral700,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(35.0),
                              ),
                            ),
                            content: TimeScroll(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              onTimeChange: (time) {
                                setState(() {
                                  timeFrom = time;
                                });
                              },
                              onClose: () {
                                setState(() {
                                  timeFrom = null;
                                });
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ).then((value) => null)),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      width: size.width * 0.425,
                      height: size.height * 0.04,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: neutral200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7, left: 5),
                        child: Text(
                          timeFrom != null
                              ? DateFormat.jm().format(timeFrom!)
                              : "-",
                          style:
                              const TextStyle(color: neutral400, fontSize: 11),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'To',
                    style: TextStyle(
                        color: neutral800,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),

                  //show Dialog To
                  GestureDetector(
                    onTap: (() => showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: neutral700,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(35.0),
                              ),
                            ),
                            content: TimeScroll(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              onTimeChange: (time) {
                                setState(() {
                                  timeTo = time;
                                });
                              },
                              onClose: () {
                                setState(() {
                                  timeTo = null;
                                });
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ).then((value) => null)),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      width: size.width * 0.425,
                      height: size.height * 0.04,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: neutral200,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7, left: 5),
                        child: Text(
                          timeTo != null
                              ? DateFormat.jm().format(timeTo!)
                              : "-",
                          style:
                              const TextStyle(color: neutral400, fontSize: 11),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          //bagian input alasan

          //Alasan
          Container(
            width: size.width,
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 10,
            ),
            child: const Text(
              'Reason',
              style: TextStyle(
                color: neutral800,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          //Inputan Alasan
          Container(
            width: size.width,
            height: size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: neutral200),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                onTap: () {},
                style: const TextStyle(
                  color: neutral300,
                  fontSize: 11,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          //Tombol Next
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (() => showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(35.0),
                                  ),
                                ),
                                content: SuccesOver(
                                  timeFrom: timeFrom!,
                                  timeTo: timeTo!,
                                ),
                              ),
                            )),
                        child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: size.width * 0.88,
                          height: size.height * 0.055,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: primary300,
                          ),
                          child: const Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: neutral800,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
