import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lekkiprop/core/models/properties.dart';
import 'package:lekkiprop/utils/colors.dart';
import 'package:lekkiprop/utils/image_path.dart';
import 'components/feature_boxes.dart';

class PropertyDescription extends StatefulWidget {
  final Datum data;

  PropertyDescription({Key? key, required this.data}) : super(key: key);

  @override
  _PropertyDescriptionState createState() => _PropertyDescriptionState(data);
}

class _PropertyDescriptionState extends State<PropertyDescription> {
  final Datum data;
  _PropertyDescriptionState(this.data);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 304,
          width: 376,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(ImagePath.H_BACKGOUND))),
          child: Stack(
            children: [
              Positioned(
                top: 40,
                left: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: ColorPath.PRIMARY_WHITE,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Icon(
                      Icons.arrow_back_ios_new,
                      color: ColorPath.PRIMARY_BLUE.withOpacity(0.4),
                    )),
                  ),
                ),
              ),
              Positioned(
                  top: 185,
                  left: 22,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Two Bed Room Flat',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SvgPicture.asset(ImagePath.Locations,
                              color: ColorPath.PRIMARY_WHITE),
                          Text(
                            data.address + ", Nigeria",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                height: 1),
                          ),
                        ],
                      ),
                    ],
                  )),
              Positioned(
                bottom: 32,
                left: 22,
                child: Container(
                  width: 97,
                  height: 32.33333206176758,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: ColorPath.PRIMARY_BLUE,
                  ),
                  child: Center(
                      child: Text(
                    "Best for you",
                    style: TextStyle(
                        color: ColorPath.PRIMARY_WHITE,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(ImagePath.PROFILE))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.propertyOwner,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Property Owner",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: ColorPath.PRIMARY_BLUE,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.message,
                        color: ColorPath.PRIMARY_WHITE,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: ColorPath.PRIMARY_BLUE,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.phone,
                        color: ColorPath.PRIMARY_WHITE,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            children: [
              Text(
                "Property Features",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            featureBox(ImagePath.Kitchen, "${data.kitchen} Kitchen"),
            featureBox(ImagePath.SittingRoom, "${data.sittingRoom} Seating"),
            featureBox(ImagePath.Bed, "${data.bathroom} Bed Room"),
             featureBox(ImagePath.Toilet, "${data.toilet} Toilet"),
          ],
        ),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(

              children: [
                Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Property Description",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 10),                    Text(data.description)
                  ],
                ),
              ],
            ),
        ),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(

              children: [
                Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Property Price",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 10,)
,                    Text("N30 Million")
                  ],
                ),
              ],
            ),
        ),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){},
          child: Container(
            height: 50,
            width: 170,
            decoration: BoxDecoration(
              color: ColorPath.PRIMARY_BLUE,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Text("Book Property Now", 
              style: TextStyle(color: ColorPath.PRIMARY_WHITE),
              ),
            ),
          ),
        )
      ],
    ));
  }
}