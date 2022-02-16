import 'package:flutter/material.dart';
import 'package:lekkiprop/utils/colors.dart';

import 'components/custom_textfield.dart';

addProperty(context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext context) {
      final TextEditingController addressController = TextEditingController();
      final TextEditingController bedroomController = TextEditingController();
      final TextEditingController sittingRoomController =
          TextEditingController();
      final TextEditingController kitchenController = TextEditingController();
      final TextEditingController toiletController = TextEditingController();
      final TextEditingController bathroomController = TextEditingController();
      final TextEditingController propertyOwnerController =
          TextEditingController();
      final TextEditingController descriptionController =
          TextEditingController();

      return Container(
        height: MediaQuery.of(context).size.height - 210,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35))),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 110,
              height: 5,
              decoration: BoxDecoration(
                  color: ColorPath.BUTTON_GREY,
                  borderRadius: BorderRadius.circular(5.0)),
            ),
            SizedBox(height: 15),
            Text(
              "Add New Property",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 30),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(children: [
                  CustomTextFields(
                      text: "Address",
                      hintText: "Enter Property Address",
                      textInputType: TextInputType.streetAddress,
                      controller: addressController),
                  SizedBox(height: 10),
                  CustomTextFields(
                      text: "Bedrooms",
                      hintText: "Enter Number Bedrooms",
                      textInputType: TextInputType.number,
                      controller: bedroomController),
                  SizedBox(height: 10),
                  CustomTextFields(
                      text: "Sitting room",
                      hintText: "Enter Number Sittingrooms",
                      textInputType: TextInputType.number,
                      controller: sittingRoomController),
                  SizedBox(height: 10),
                  CustomTextFields(
                      text: "Toilets",
                      hintText: "Enter Number Toilets",
                      textInputType: TextInputType.number,
                      controller: toiletController),
                  SizedBox(height: 10),
                  CustomTextFields(
                      text: "Bath Rooms",
                      hintText: "Enter Number of Bath Rooms",
                      textInputType: TextInputType.name,
                      controller: bathroomController),
                  SizedBox(height: 10),
                  CustomTextFields(
                      text: "Kitchen",
                      hintText: "Enter Number Kichens",
                      textInputType: TextInputType.number,
                      controller: kitchenController),
                  SizedBox(height: 10),
                  CustomTextFields(
                      text: "Property Owner",
                      hintText: "Enter Property Owners Name",
                      textInputType: TextInputType.name,
                      controller: propertyOwnerController),
                  SizedBox(height: 10),
                  CustomTextFields(
                      text: "Descriptiom",
                      hintText: "Enter Property Description",
                      textInputType: TextInputType.name,
                      controller: descriptionController),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                          color: ColorPath.PRIMARY_BLUE,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Add New Property",
                          style: TextStyle(color: ColorPath.PRIMARY_WHITE),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ]),
              ),
            ),
          ],
        ),
      );
    },
  );
}
