import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hci_project/const/colors.dart';
import 'package:hci_project/const/size.dart';
import 'package:hci_project/screens/signup_screen/view.dart';
import 'package:hci_project/widgets/textField.dart';
import '../signup_screen3/view.dart';

class SignUp_2 extends StatefulWidget {
  const SignUp_2({Key? key}) : super(key: key);

  @override
  State<SignUp_2> createState() => _SignUp_2State();
}

class _SignUp_2State extends State<SignUp_2> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? email,passwordUser;

  var dropVal;

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
                //name text field
                CustomTextField(
                  hint: "الإسم",
                  icon: Icons.person,
                  secure: false,
                  validator: (value) {
                    if (value.toString().isEmpty){
                      return"برجاء إدخال الإسم";
                    }
                    return null;
                  },
                  onChange: (val ) { email=val; },
                ),
                //gender drop down
                Container(
                  height: height(context, 10),
                  width: width(context, 1),
                  margin:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: white1,
                      border: Border.all(color: white2, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: DropdownButtonFormField<String>(
                          value: dropVal,
                          iconSize: 40,
                          hint: const Text(
                            "Gender",
                            style: TextStyle(color: lightgrey),
                          ),
                          decoration: const InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            prefixIcon: ImageIcon(AssetImage('assets/gender.png'),color: lightgrey,),
                          ),
                          onChanged: (newValue) {
                            setState(() {});
                          },
                          items: <String>["أنثى", "ذكر"]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              child: Text(value),
                              value: value,
                            );
                          }).toList()
                      ),
                    ),
                  ),
                ),
                //age text field
                CustomTextField(
                  hint: " السن",
                  icon: Icons.person,
                  secure: false,
                  validator: (value){
                    if(value.toString().isEmpty){
                      return "برجاء إدخال السن الخاص بالمريض";
                    }
                  },
                  onChange: (val){
                    passwordUser=val;
                  },
                ),
                //weight text field
                CustomTextField(
                  hint: 'الوزن',
                  icon: Icons.monitor_weight_rounded,
                  secure: false,
                  validator: (val) {
                    if (val.toString().isEmpty) {
                      return 'برجاء إدخال الوزن ';
                    }
                    return null;
                  },
                  onChange: (val) {},
                ),
                SizedBox(height: height(context, 20),),
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
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUp())),
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
                        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUp_3())),
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