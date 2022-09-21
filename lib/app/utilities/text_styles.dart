import 'package:flutter/cupertino.dart';

const FontWeight bold = FontWeight.w700;
const FontWeight semibold = FontWeight.w600;
const FontWeight medium = FontWeight.w500;
const FontWeight regular = FontWeight.w400;

/// heading size

TextStyle heading1(colorText, fontWeight) {
  return TextStyle(color: colorText, fontSize: 25, fontWeight: fontWeight);
}

TextStyle heading2(colorText, fontWeight) {
  return TextStyle(color: colorText, fontSize: 23, fontWeight: fontWeight);
}

TextStyle heading3(colorText, fontWeight) {
  return TextStyle(color: colorText, fontSize: 20, fontWeight: fontWeight);
}

TextStyle heading4(colorText, fontWeight) {
  return TextStyle(color: colorText, fontSize: 18, fontWeight: fontWeight);
}

/// text size

TextStyle text1(colorText, fontWeight) {
  return TextStyle(color: colorText, fontSize: 18, fontWeight: fontWeight);
}

TextStyle text2(colorText, fontWeight) {
  return TextStyle(color: colorText, fontSize: 16, fontWeight: fontWeight);
}

TextStyle text3(colorText, fontWeight) {
  return TextStyle(color: colorText, fontSize: 14, fontWeight: fontWeight);
}

TextStyle text4(colorText, fontWeight) {
  return TextStyle(color: colorText, fontSize: 12, fontWeight: fontWeight);
}
