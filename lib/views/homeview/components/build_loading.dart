import 'package:flutter/material.dart';
import 'package:lekkiprop/utils/colors.dart';

Widget buildLoading(context) {
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
          width: 200.0,
          height: 80.0,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                valueColor:
                    new AlwaysStoppedAnimation<Color>(ColorPath.PRIMARY_BLUE),
                backgroundColor: ColorPath.PRIMARY_WHITE,
              ),
              Container(
                child: Text(
                  "Loading...",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    color: ColorPath.PRIMARY_WHITE,
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