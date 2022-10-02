import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../utilities/colors.dart';

class SuccesIzin extends StatelessWidget {
  const SuccesIzin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.5,
      width: size.width * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: Text(
              'Succesfull',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.5,
            height: size.height * 0.18,
            child: Lottie.asset('assets/succes.json'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Dani Kurniawati',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'UI/UX Designer',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'From',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '19 Mei 2022',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'To',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '21 Mei 2022',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {}, //ini nanti pindah ke menu awal lagi
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              width: size.width,
              height: size.height * 0.055,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: primary300,
              ),
              child: const Center(
                child: Text(
                  'Done',
                  style:
                      TextStyle(color: neutral800, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
