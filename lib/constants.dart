import 'package:flutter/material.dart';

double fiveSecondes = 5;

double height24 = 24.0;
double logoHeight60 = 60.0;
double fontSize45 = 45.0;
double height48 = 48.0;
double height200 = 200.0;
double height8 = 8.0;

String flahTag = 'flash';
String flashCht = 'Flash Chat';
String login = 'Log in';
String register = 'Register';
String send = 'Send';

String enterPassword = 'Enter your password';
String enteremail = 'Enter your email';

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

const kinputTextFieldecoration = InputDecoration(
  hintText: 'Enter your password.',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

class Mysizeddbox extends StatelessWidget {
  Mysizeddbox({Key? key, required this.height}) : super(key: key);

  double height;

  @override
  SizedBox build(BuildContext context) {
    return const SizedBox(
      height: 8.0,
    );
  }
}
