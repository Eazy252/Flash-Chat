import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat_app/screene/chat_screen.dart';
import 'package:flash_chat_app/screene/login_screen.dart';
import 'package:flash_chat_app/screene/registration.dart';
import 'package:flash_chat_app/screene/welcome_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'firebase_options.dart';

void main() async {
// ...
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => Chatapp(),
      // Wrap your app
    ),
  );
}

class Chatapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      initialRoute: 'welcomeScreen',
      routes: {
        'welcomeScreen': (context) => WelcomeScreen(),
        'loginScreen': (context) => LoginScreen(),
        'registrtationScreen': (context) => RegistrationScreen(),
        'chatScreen': (context) => ChatScreen(),
      },
    );
  }
}
