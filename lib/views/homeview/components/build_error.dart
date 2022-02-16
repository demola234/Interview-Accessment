import 'package:flutter/material.dart';
import 'package:lekkiprop/utils/colors.dart';

Widget buildErrorWidget(context, String error) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Container(
        height: 150,
        width: 150,
        alignment: Alignment.center,
        padding: EdgeInsets.all(0.0),
        margin: EdgeInsets.all(0.0),
        child: Container(
          width: 350.0,
          height: 80.0,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Please reconnect to the internet",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorPath.PRIMARY_BLUE,
          ),
        ),
      ),
    );
  }