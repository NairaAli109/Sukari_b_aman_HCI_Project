import 'package:flutter/material.dart';
import 'package:hci_project/const/size.dart';
import '../../const/colors.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
      body: Center(
        child: SizedBox(
            width: width(context, 1.5),
            height: height(context, 1.5),
            child: const Image(image: AssetImage("assets/logo.png"))
        ),
      ),
    );
  }
}
