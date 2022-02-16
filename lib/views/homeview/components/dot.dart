import 'package:flutter/material.dart';

Widget dot() {
    return Container(
        width: 4,
        height: 4,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 1),
          borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
        ));
  }
