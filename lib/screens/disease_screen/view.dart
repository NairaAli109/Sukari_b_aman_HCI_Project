
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hci_project/const/colors.dart';
import 'package:hci_project/const/size.dart';
import 'package:hci_project/widgets/Expanded_textfield.dart';
import 'package:hci_project/widgets/button.dart';

import '../signup_screen3/view.dart';

class Disease_Screen extends StatefulWidget {
  const Disease_Screen({Key? key}) : super(key: key);

  @override
  State<Disease_Screen> createState() => _Disease_ScreenState();
}

class _Disease_ScreenState extends State<Disease_Screen> {

  var checkbox1 = false;
  void checkBoxChange1(bool? val) {
    setState(() {
      checkbox1 = val!;
    });
  }
  var checkbox2 = false;
  void checkBoxChange2(bool? val) {
    setState(() {
      checkbox2 = val!;
    });
  }
  var checkbox3 = false;
  void checkBoxChange3(bool? val) {
    setState(() {
      checkbox3 = val!;
    });
  }
  void checkBoxChange4(bool? val) {
    setState(() {
      checkbox4 = val!;
    });
  }
  var checkbox4 = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: height(context, 10),),
              //logo
              SizedBox(
                width: width(context, 2.5),
                child: Image.asset("assets/logo.png"),
              ),
             // SizedBox(height: height(context,200),),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "إنشاء حساب",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: black,
                    ),
                  ),
                ),
              ),
              //SizedBox(height: height(context, 150),),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    " هل تعاني من أمراض أخرى؟",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: black,
                    ),
                  ),
                ),
              ),
              //SizedBox(height: height(context, 150),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    //checkbox1
                    Row(
                      children: [
                        Checkbox(
                          value: checkbox1,
                          onChanged: checkBoxChange1,
                          checkColor:blue ,
                          activeColor: white2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.5),
                          ),
                        ),
                        const Text(
                          "ضغط",
                          style: TextStyle(
                            fontSize: 22,color: blue,
                          ),
                        ),
                      ],
                    ),
                    //checkbox2
                    Row(
                      children: [
                        Checkbox(
                          value: checkbox2,
                          onChanged: checkBoxChange2,
                          checkColor:blue ,
                          activeColor: white2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.5),
                          ),
                        ),
                        const Text(
                          "قلب",
                          style: TextStyle(
                            fontSize: 22,color: blue,
                          ),
                        ),
                      ],
                    ),
                    //checkbox3
                    Row(
                      children: [
                        Checkbox(
                          value: checkbox3,
                          onChanged: checkBoxChange3,
                          checkColor:blue ,
                          activeColor: white2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.5),
                          ),
                        ),
                        const Text(
                          "حساسيه صدر",
                          style: TextStyle(
                            fontSize: 22,color: blue,
                          ),
                        ),
                      ],
                    ),
                    //checkbox4
                    Row(
                      children: [
                        Checkbox(
                          value: checkbox4,
                          onChanged: checkBoxChange4,
                          checkColor:blue ,
                          activeColor: white2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.5),
                          ),
                        ),
                        const Text(
                          "أخرى",
                          style: TextStyle(
                            fontSize: 22,color: blue,
                          ),
                        ),
                      ],
                    ),
                    ExpandedTextField(
                      hint: 'الأمراض الأخرى',
                      secure: false,
                      onChange: (val) {},
                    ),
                  ],
                ),
              ),
              Button(
                  text: "تسجيل",
                  onTap: () {}
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 161,),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  const [
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: lightBlue,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: white1,
                          child: CircleAvatar(
                            radius:5,
                            backgroundColor: lightRed,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: lightBlue,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: white1,
                          child: CircleAvatar(
                            radius:5,
                            backgroundColor: lightRed,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: lightBlue,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: white1,
                          child: CircleAvatar(
                            radius:5,
                            backgroundColor: lightRed,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: lightBlue,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: white1,
                          child: CircleAvatar(
                            radius:5,
                            backgroundColor: lightRed,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,  ),
                child: InkWell(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUp_3())),
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back_ios,color: black,),
                      Text(
                        "رجوع ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
