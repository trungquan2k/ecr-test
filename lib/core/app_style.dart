import 'package:flutter/material.dart';

class AppColor {
  static  Color ercPrimary = const Color(0xFFEB1956);
  static  Color ercSecondary = const Color(0xFF1A153A);
  static Color grey = const Color(0xff999999);
}

const headLine6 = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: Colors.grey,
  overflow: TextOverflow.ellipsis,
);

const headLine5 = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

const headLine4 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
);

const headLine3 = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
);

const headLine2 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  overflow: TextOverflow.ellipsis,
);

const headLine1 = TextStyle(fontSize: 20, fontWeight: FontWeight.w900);

const focusedBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black54, width: 2.0),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

const enabledBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black12, width: 1.0),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

const errorBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 3, color: Colors.redAccent),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

const inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
  borderSide: BorderSide(color: Colors.redAccent),
);

const focusedErrorBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 3, color: Colors.redAccent),
  borderRadius: BorderRadius.all(
    Radius.circular(10.0),
  ),
);

InputDecoration kDefaultInputDecoration = InputDecoration(
    alignLabelWithHint: true,
    fillColor: Colors.white,
    focusColor: Colors.white,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
    enabledBorder: kOutlineInputBorder,
    disabledBorder: kOutlineInputBorder,
    border: kOutlineInputBorder,
    errorBorder: kOutlineInputBorder.copyWith(
        borderSide: const BorderSide(color: Colors.red)),
    focusedErrorBorder: kOutlineInputBorder.copyWith(
        borderSide: const BorderSide(color: Colors.red)),
    focusedBorder: kOutlineInputBorder.copyWith(
        borderSide:  BorderSide(color: AppColor.ercPrimary)),
    filled: true,
    labelStyle: const TextStyle(height: -1));

OutlineInputBorder kOutlineInputBorder = OutlineInputBorder(
  borderSide:
      BorderSide(width: 0.8, style: BorderStyle.solid, color: AppColor.grey),
  borderRadius: BorderRadius.circular(5),
  gapPadding: 10,
);