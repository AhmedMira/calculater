import 'package:flutter/material.dart';

Widget defaultButton({
  double wid = double.infinity,
  double r = 10.0,
  bool isUpper = true,
  @required String text,
  @required Function function,
  Color back = Colors.teal,
}) =>
    Container(
      width: wid,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(r),
        color: back,
      ),
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: function,
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultFormField({
  @required controller,
  hint = '',
  @required type,
  pass = false,
}) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5.0,
        ),
        border: Border.all(
          width: 1.0,
          color: Colors.blueGrey,
        ),
      ),
      child: TextFormField(
        controller: controller,
        decoration:
            InputDecoration(border: InputBorder.none, hintText: '$hint'),
        keyboardType: type,
        obscureText: pass,
      ),
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
