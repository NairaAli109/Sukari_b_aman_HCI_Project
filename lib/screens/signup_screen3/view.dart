import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hci_project/const/colors.dart';
import 'package:hci_project/const/size.dart';
import 'package:hci_project/screens/disease_screen/view.dart';
import 'package:hci_project/screens/signup_screen2/view.dart';
import 'package:hci_project/widgets/Expanded_textfield.dart';

class SignUp_3 extends StatefulWidget {
  const SignUp_3({Key? key}) : super(key: key);

  @override
  State<SignUp_3> createState() => _SignUp_3State();
}

class _SignUp_3State extends State<SignUp_3> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: height(context, 10),),
                //logo
                SizedBox(
                  width: width(context, 2.5),
                  child: Image.asset("assets/logo.png"),
                ),
                SizedBox(height: height(context,200),),
                SizedBox(height: height(context,200),),
                const Padding(
                  padding: EdgeInsets.only(right: 30),
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
                SizedBox(height: height(context, 200),),
                Container(
                  alignment: Alignment.center,
                  width: width(context, 1),
                  // height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: white1,
                    // border: Border.all(color: white2,width: 2),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: lightgrey, offset: Offset(0, 1), blurRadius: 1)
                    ],
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ExpandablePanel(
                      header: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //SizedBox(width: width(context, 70),),
                            Text(
                              'أنسولين',
                              style: GoogleFonts.rubik(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      expanded: const SizedBox(),
                      collapsed: Column(
                        children: [
                          SizedBox(
                            height: height(context, 8),
                            child: ExpandedTextField(
                              hint: 'الإسم',
                              secure: false,
                              onChange: (val) {},
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width(context, 2.3),
                                height: height(context, 8),
                                child: ExpandedTextField(
                                  hint: 'الجرعه',
                                  secure: false,
                                  onChange: (val) {},
                                ),
                              ),
                              SizedBox(
                                width: width(context, 2.3),
                                height: height(context, 8),
                                child: ExpandedTextField(
                                  hint: 'الساعه',
                                  secure: false,
                                  onChange: (val) {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        hasIcon: true,
                        alignment: Alignment.center,
                        inkWellBorderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: width(context, 1),
                  // height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: white1,
                    // border: Border.all(color: white2,width: 2),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: lightgrey, offset: Offset(0, 1), blurRadius: 1)
                    ],
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ExpandablePanel(
                      header: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //SizedBox(width: width(context, 70),),
                            Text(
                              'أقراص',
                              style: GoogleFonts.rubik(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      expanded: const SizedBox(),
                      collapsed: Column(
                        children: [
                          SizedBox(
                            height: height(context, 8),
                            child: ExpandedTextField(
                              hint: 'الإسم',
                              secure: false,
                              onChange: (val) {},
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width(context, 2.3),
                                height: height(context, 8),
                                child: ExpandedTextField(
                                  hint: 'الجرعه',
                                  secure: false,
                                  onChange: (val) {},
                                ),
                              ),
                              SizedBox(
                                width: width(context, 2.3),
                                height: height(context, 8),
                                child: ExpandedTextField(
                                  hint: 'الساعه',
                                  secure: false,
                                  onChange: (val) {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        hasIcon: true,
                        alignment: Alignment.center,
                        inkWellBorderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height(context, 20),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 161, vertical: 60),
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
                          backgroundColor: lightgrey,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: white1,
                            child: CircleAvatar(
                              radius:5,
                              backgroundColor: lightgrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUp_2())),
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
                      InkWell(
                        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => const Disease_Screen())),
                        child: Row(
                          children: const [
                            Text(
                              "التالي ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: black,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios_outlined,color: black,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
