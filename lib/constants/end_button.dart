

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/contants.dart';

class EndButton extends StatelessWidget {
  EndButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 6.0),
        padding: EdgeInsets.only(bottom: 12.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}