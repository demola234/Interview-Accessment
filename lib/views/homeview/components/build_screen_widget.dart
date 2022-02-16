import 'package:flutter/material.dart';
import 'package:lekkiprop/core/models/properties_home.dart';
import 'package:lekkiprop/utils/colors.dart';
import 'package:lekkiprop/utils/image_path.dart';
import 'package:lekkiprop/views/addNew/add_new.dart';
import 'package:lekkiprop/views/description/property_description.dart';
import 'assest_boxes.dart';
import 'property_card.dart';

Widget buildScreenWidget(BuildContext context, ResponseWrapper response) {
  List items = response.data;
  return Column(children: [
    Container(
      width: MediaQuery.of(context).size.width,
      height: 220.0,
      child: Stack(children: [
        Positioned(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 188.0,
            decoration: BoxDecoration(
                image:
                    DecorationImage(
                      image: AssetImage(ImagePath.H_BACKGOUND))),
          ),
        ),
        Positioned(
          top: 40,
          right: 10,
          child: Center(
            child: Container(
              width: 97,
              height: 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7.0),
                    topRight: Radius.circular(7.0),
                    bottomLeft: Radius.circular(7.0),
                    bottomRight: Radius.circular(7.0),
                  ),
                  color: ColorPath.PRIMARY_BLUE),
              child: TextButton(
                onPressed: () {
                  addProperty(context);
                },
                child: Text(
                  'Add  Property',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: ColorPath.PRIMARY_WHITE,
                      fontFamily: 'Poppins',
                      fontSize: 11,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 92,
            left: 36,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find The Best Place To Live',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: ColorPath.PRIMARY_WHITE,
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w700,
                        height: 1),
                  ),
                  SizedBox(height: 10.0),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "To Live in ",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: ColorPath.PRIMARY_WHITE,
                          fontSize: 18,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w700,
                          height: 1),
                    ),
                    TextSpan(
                      text: "Nigeria",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: ColorPath.PRIMARY_BLUE,
                          fontSize: 18,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w700,
                          height: 1),
                    ),
                  ])),
                ])),
        Positioned(
            bottom: 10,
            left: MediaQuery.of(context).size.width / 10,
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFF5F6F5)),
                color: ColorPath.PRIMARY_WHITE,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none),
                  disabledBorder: InputBorder.none,
                  fillColor: ColorPath.PRIMARY_WHITE,
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: ColorPath.PRIMARY_BLACK.withOpacity(0.6),
                  ),
                  prefixIcon: Icon(Icons.search,
                      color: ColorPath.BUTTON_GREY, size: 20),
                  hintText: "Search for a place to stay",
                ),
              ),
            ))
      ]),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              assetBoxes(ImagePath.Bed),
              assetBoxes(ImagePath.Kitchen),
              assetBoxes(ImagePath.SittingRoom),
              assetBoxes(ImagePath.Toilet),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Property Listing",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 465,
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PropertyDescription(data: items[index])));
                      },
                      child: propertyCard(context, items[index]));
                }),
          ),
        ],
      ),
    )
  ]);
}
