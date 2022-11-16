import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const String toastText = "";

void toastShow() =>
    Fluttertoast.showToast(
        msg: "Item Added Successfully.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0.5),
        textColor: Colors.white,
        fontSize: 14.0
    );

void filtertoastShow() =>
    Fluttertoast.showToast(
        msg: "Applied Successfully.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0.5),
        textColor: Colors.white,
        fontSize: 14.0
    );

void deletetoastShow() =>
    Fluttertoast.showToast(
        msg: "All Filter Effects Removed",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0.5),
        textColor: Colors.white,
        fontSize: 14.0
    );

void cartdeletetoastShow() =>
    Fluttertoast.showToast(
        msg: "Item Removed",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0.5),
        textColor: Colors.white,
        fontSize: 14.0
    );

