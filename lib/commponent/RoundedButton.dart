import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Roundedbutton extends StatelessWidget {
  final Color specifyColour;
  final String theText;
  final VoidCallback onPressed;
  // final Function onPressed;

  Roundedbutton(
      {required this.specifyColour,
      required this.theText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: specifyColour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            theText,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
