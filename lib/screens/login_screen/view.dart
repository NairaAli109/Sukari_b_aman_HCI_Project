
import 'package:flutter/material.dart';
import 'package:hci_project/const/size.dart';
import '../../const/colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //final SetData _userData = SetData();
  String? email,passwordUser;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:   [
              const SizedBox(height: 100,),
              //مخلخ
              SizedBox(
                width: width(context, 2.0),
                height: height(context, 2.0),
                child: Image.asset("assets/logo.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
