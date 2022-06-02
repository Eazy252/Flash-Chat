import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat_app/commponent/RoundedButton.dart';
import 'package:flash_chat_app/constants.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // final _AuthRegistrationScreen = FirebaseAuth.instance;
  late String email;
  late String Password;
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
            Mysizeddbox(height: height48),
            TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                decoration:
                    kinputTextFieldecoration.copyWith(hintText: 'Enter email')),
            Mysizeddbox(height: height8),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                Password = value;
              },
              decoration: kinputTextFieldecoration,
            ),
            Mysizeddbox(height: height24),
            Roundedbutton(
              specifyColour: Colors.blueAccent,
              theText: register,
              onPressed: () async {
                Navigator.pushNamed(context, 'loginScreen');
                // try {
                //   final NewUser = await _AuthRegistrationScreen.createUserWithemailAndPassword(
                //       email: email, password: Password);
                //   if (NewUser != null) {
                //     Navigator.pushNamed(context, 'loginScreen');
                //   }
                // } catch (e) {
                //   print(e);
                // }
              },
            ),
          ],
        ),
      ),
    );
  }
}
