import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lekkiprop/core/models/properties.dart';
import 'package:lekkiprop/utils/colors.dart';
import 'package:lekkiprop/utils/image_path.dart';
import 'dot.dart';

Widget propertyCard(context, Datum data) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
        border: Border.all(color: ColorPath.BUTTON_GREY),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Row(
      children: [
        Container(
          height: 83,
          width: 83,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImagePath.LEKKI_PROP), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Two Bed Room Flat",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                dot(),
                SizedBox(width: 2.0),
                Text(
                  data.bedroom.toString() + " BedRoom",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 4.0,
                ),
                dot(),
                SizedBox(width: 2.0),
                Text(
                  data.toilet.toString() + " Toilet",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 4.0,
                ),
                dot(),
                SizedBox(width: 2.0),
                Text(
                  data.kitchen.toString() + " Kitchen",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                SvgPicture.asset(ImagePath.Locations),
                Text(
                  data.address,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}
