import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat_app/commponent/RoundedButton.dart';
import 'package:flash_chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:validatorless/validatorless.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();

  // final _AulthLoginScreen = FirebaseAuth.instance;

}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              transitionOnUserGestures: true,
              tag: flahTag,
              child: Container(
                height: height200,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: height48,
            ),
            TextFormField(
              validator: Validatorless.multiple([
                Validatorless.email('The field must be an email'),
                Validatorless.required('The field is obligatory')
              ]),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                var email = value;
              },
              decoration:
                  kinputTextFieldecoration.copyWith(hintText: enteremail),
            ),
            Mysizeddbox(
              height: height48,
            ),
            TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {
                  var password = value;
                },
                decoration:
                    kinputTextFieldecoration.copyWith(hintText: enterPassword)),
            SizedBox(
              height: 24.0,
            ),
            Roundedbutton(
                onPressed: () => Navigator.pushNamed(context, 'chatScreen'),
                specifyColour: Colors.lightBlueAccent,
                theText: login),
          ],
        ),
      ),
    );
  }
}
