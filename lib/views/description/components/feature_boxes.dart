import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lekkiprop/utils/colors.dart';

Widget featureBox(String image, String text){
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(10.0),
            height: 90,
            width: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(color: ColorPath.BUTTON_GREY)),
            child: Column(
              children: [
                SvgPicture.asset(
                  image,
                  height: 40,
                  width: 40,
                ),
                SizedBox(height: 15,),
                  Text(text, 
                  style: TextStyle(
        color: Color.fromRGBO(56, 61, 109, 1),
        fontFamily: 'Poppins',
        fontSize: 8,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.w700,
        height: 1
      ),
                  ),
              ],
            )),

      ],
    );
  }