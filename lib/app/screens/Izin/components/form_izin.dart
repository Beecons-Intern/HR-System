import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../widgets/date_picker.dart';
import '../../../widgets/succes_izin.dart';

class FormIzin extends StatelessWidget {
  const FormIzin({Key? key}) : super(key: key);

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
          const DatePick(), //Bagian pilih tanggal

          //bagian input alasan
          Container(
            width: size.width,
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 10,
            ),
            child: const Text(
              'Annotation',
              style: TextStyle(
                color: neutral800,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
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

          //Upload file tapi belum bisa karena perlu firebase
          Container(
            width: size.width,
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 10,
            ),
            child: const Text(
              'Attachment',
              style: TextStyle(
                color: neutral800,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Container(
            width: size.width,
            height: size.height * 0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: neutral200,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cloud_upload_outlined),
                  color: neutral800,
                ),
              ),
            ),
          ),

          //Tombol Next
          GestureDetector(
            onTap: (() => showDialog(
                  context: context,
                  // ignore: avoid_types_as_parameter_names
                  builder: (BuildContext) => const AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.0),
                      ),
                    ),
                    content: SuccesIzin(),
                  ),
                )),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: size.width,
              height: size.height * 0.055,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: primary300,
              ),
              child: const Center(
                child: Text(
                  'Next',
                  style:
                      TextStyle(color: neutral800, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
