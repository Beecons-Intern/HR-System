import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../utilities/colors.dart';

class DatePick extends StatefulWidget {
  const DatePick({Key? key}) : super(key: key);

  @override
  State<DatePick> createState() => _DatePickState();
}

class _DatePickState extends State<DatePick> {
  DateTime? startDate;
  DateTime? endDate;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Select From
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'From',
            style: TextStyle(
                color: neutral800, fontSize: 12, fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: () {
              showCustomDateRangePicker(
                context,
                dismissible: true,
                minimumDate: DateTime(1900),
                maximumDate: DateTime(2100),
                endDate: endDate,
                startDate: startDate,
                onApplyClick: (start, end) {
                  setState(() {
                    endDate = end;
                    startDate = start;
                  });
                },
                onCancelClick: () {
                  setState(() {
                    endDate = null;
                    startDate = null;
                  });
                },
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: size.width * 0.425,
              height: size.height * 0.04,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: neutral200),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 5),
                child: Text(
                  startDate != null
                      ? DateFormat.yMd('en_US').format(startDate!)
                      : ' -',
                  style: const TextStyle(color: neutral400, fontSize: 11),
                ),
              ),
            ),
          ),
        ]),

        //select TO
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'To',
              style: TextStyle(
                  color: neutral800, fontSize: 12, fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              onTap: () {
                showCustomDateRangePicker(
                  context,
                  dismissible: true,
                  minimumDate: DateTime(1900),
                  maximumDate: DateTime(2100),
                  primaryColor: Colors.grey,
                  endDate: endDate,
                  startDate: startDate,
                  onApplyClick: (start, end) {
                    setState(() {
                      endDate = end;
                      startDate = start;
                    });
                  },
                  onCancelClick: () {
                    setState(() {
                      endDate = null;
                      startDate = null;
                    });
                  },
                );
              },
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
                  padding: const EdgeInsets.only(top: 5, left: 5),
                  child: Text(
                    endDate != null
                        ? DateFormat.yMd('en_US').format(endDate!)
                        : '-',
                    style: const TextStyle(color: neutral400, fontSize: 11),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
