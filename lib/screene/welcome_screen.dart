import 'package:flash_chat_app/commponent/RoundedButton.dart';
import 'package:flash_chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat_app/constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(
        seconds: 5,
      ),
      vsync: this,
    );
    super.initState();

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(controller.value),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: height24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  transitionOnUserGestures: true,
                  tag: flahTag,
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: logoHeight60,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('Flash Chat',
                        textStyle: TextStyle(
                          fontSize: fontSize45,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                  isRepeatingAnimation: true,
                ),
              ],
            ),
            SizedBox(
              height: height48,
            ),
            Roundedbutton(
              onPressed: () => Navigator.pushNamed(context, 'loginScreen'),
              specifyColour: Colors.lightBlueAccent,
              theText: login,
            ),
            Roundedbutton(
              onPressed: () =>
                  Navigator.pushNamed(context, 'registrtationScreen'),
              specifyColour: Colors.blueAccent,
              theText: register,
            ),
          ],
        ),
      ),
    );
  }
}
