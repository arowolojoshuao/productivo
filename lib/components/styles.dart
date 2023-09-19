/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor3 = Color(0xFF9597F3);
const appColor = Color(0xFF7A92EE);

const appColor2 = Color(0xFF7EB4FE);
const backgroundColor = Color.fromARGB(255, 243, 243, 243);

textField(hint) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8),
    child: TextField(
      decoration: InputDecoration(
        labelText: hint,
        labelStyle: TextStyle(color: Colors.black54, fontSize: 12),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: appColor),
        ),
      ),
    ),
  );
}

logoText() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Productivo",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontFamily: "medium",
            )),
      ],
    ),
  );
}

headingText(val) {
  return Text(val,
      style: TextStyle(
        fontSize: 24,
        fontFamily: "medium",
      ));
}

greyText(val) {
  return Text(val,
      textAlign: TextAlign.center,
      style:
          TextStyle(fontSize: 11, color: Colors.black38, fontFamily: 'medium'));
}

colorText(val) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(val,
            style: TextStyle(
                fontSize: 16, color: appColor, fontFamily: 'semibold')),
        Container(
            width: 40,
            child: Divider(
              thickness: 2,
              color: appColor,
            ))
      ],
    ),
  );
}
