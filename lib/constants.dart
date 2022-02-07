import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle labelStyle2 = GoogleFonts.cairo(
    textStyle: const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      height: 5,
      color: Colors.black,
    ),);
const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

double sizeFromHeight(BuildContext context, double fraction,
    {bool hasAppBar = true}) {
  final screenHeight = MediaQuery
      .of(context)
      .size
      .height;
  fraction = (hasAppBar
      ? (screenHeight -
      AppBar().preferredSize.height -
      MediaQuery
          .of(context)
          .padding
          .top)
      : screenHeight) /
      fraction;
  return fraction;
}

double sizeFromWidth(BuildContext context,
    double fraction,) {
  return MediaQuery
      .of(context)
      .size
      .width / fraction;
}
