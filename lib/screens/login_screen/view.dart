import 'package:flutter/material.dart';
import 'package:hci_project/const/colors.dart';
import 'package:hci_project/const/size.dart';
import 'package:hci_project/screens/signup_screen/view.dart';
import 'package:hci_project/widgets/textField.dart';
import '../../widgets/button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? email,passwordUser;

  var checkbox1 = false;
  void checkBoxChange(bool? val) {
    setState(() {
      checkbox1 = val!;
    });
  }


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
              children:   [
                SizedBox(height: height(context, 10),),
                //logo
                SizedBox(
                  width: width(context, 2.5),
                  child: Image.asset("assets/logo.png"),
                ),
                SizedBox(height: height(context,200),),
                const Padding(
                  padding:  EdgeInsets.only(right: 25),
                  child:  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                        "تسجيل الدخول",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        color: black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height(context, 200),),
                //email text field
                CustomTextField(
                  hint: "البريد الإلكتروني",
                  icon: Icons.mail_outlined,
                  secure: false,
                  validator: (value) {
                    if (value.toString().isEmpty){
                      return"برجاء إدخال البريد الإلكتروني ";
                    }
                  }, onChange: (val ) { email=val; },
                ),
                //password text field
                CustomTextField(
                    hint: "كلمه السر",
                  icon: Icons.lock,
                  secure: true,
                  validator: (value){
                      if(value.toString().isEmpty){
                        return "برجاء إدخال كلمه السر";
                      }
                  },
                  onChange: (val){
                      passwordUser=val;
                  },
                ),
                //checkbox remember and forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,vertical: 5
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: checkbox1,
                              onChanged: checkBoxChange,
                              checkColor:blue ,
                              activeColor: white2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.5),
                              ),
                            ),
                            const Text(
                              "تذكرني",
                              style: TextStyle(
                                fontSize: 15,color: lightgrey,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "هل نسيت كلمه المرور؟",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 15,
                                color: lightgrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //login button
                Button(
                    text: "دخول",
                    onTap: () {}
                    ),
                SizedBox(height: height(context, 8.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const Text("ليس لديك حساب؟",
                        style: TextStyle(
                            fontSize: 16,
                            color: lightgrey,
                            fontWeight: FontWeight.w600)
                    ),
                    SizedBox(width:width(context, 40.0)),
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUp())),
                      child: const Text("إنشاء حساب",
                          style: TextStyle(
                              fontSize: 15,
                              color: blue,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),  SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
