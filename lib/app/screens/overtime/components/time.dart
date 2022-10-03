import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class TimeScroll extends StatefulWidget {
  const TimeScroll(
      {Key? key,
      required this.onTap,
      required this.onTimeChange,
      required this.onClose})
      : super(key: key);
  final void Function()? onTap;
  final void Function(DateTime)? onTimeChange;
  final void Function()? onClose;

  @override
  State<TimeScroll> createState() => _TimeScrollState();
}

class _TimeScrollState extends State<TimeScroll> {
  DateTime dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
        height: size.height * 0.34,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                'Set time',
                style: TextStyle(
                  color: neutral100,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TimePickerSpinner(
              time: dateTime,
              is24HourMode: false,
              normalTextStyle: const TextStyle(fontSize: 24, color: neutral400),
              highlightedTextStyle:
                  const TextStyle(fontSize: 24, color: neutral100),
              spacing: 40,
              itemHeight: 50,
              isForce2Digits: true,
              onTimeChange: widget.onTimeChange,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: widget.onClose,
                    child: Container(
                      width: size.width * 0.3,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                        border: Border.all(color: neutral300),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: neutral300,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Container(
                      width: size.width * 0.3,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                        color: const Color(0xff349053),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Save',
                          style: TextStyle(
                            color: neutral200,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
