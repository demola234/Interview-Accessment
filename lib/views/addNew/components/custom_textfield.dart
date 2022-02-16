import 'package:flutter/material.dart';
import 'package:lekkiprop/utils/colors.dart';

// ignore: must_be_immutable
class CustomTextFields extends StatelessWidget {
  String text;
  String hintText;
  TextInputType textInputType;
  TextEditingController controller;

  CustomTextFields(
      {required this.hintText,
      required this.text,
      required this.textInputType,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: ColorPath.BUTTON_GREY,
              border: Border.all(
                color: ColorPath.BUTTON_GREY,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: TextFormField(
                keyboardType: textInputType,
                controller: controller,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: ColorPath.PRIMARY_TEXT,
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                  border: InputBorder.none,
                ),
              ),
            )),
      ],
    );
  }
}
