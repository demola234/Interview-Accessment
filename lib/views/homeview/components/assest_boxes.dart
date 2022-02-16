import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lekkiprop/utils/colors.dart';

Widget assetBoxes(String image){
    return Container(
        padding: EdgeInsets.all(10.0),
        height: 65,
        width: 65,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: ColorPath.BUTTON_GREY)),
        child: SvgPicture.asset(
          image,
          height: 40,
          width: 40,
        ));
  }