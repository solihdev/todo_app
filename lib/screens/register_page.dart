import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/screens/login_page.dart';
import 'package:todo_app/screens/main_page.dart';
import 'package:todo_app/screens/start_screen_page.dart';
import 'package:todo_app/utils/colors.dart';
import 'package:todo_app/utils/images.dart';
import '../widgets/my_button.dart';
import '../widgets/textfield_widget.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
final _formkey = GlobalKey<FormState>();

class _RegisterPageState extends State<RegisterPage> {
  bool isvisiblity = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => StartScreenPage()));
              },
              child: Icon(Icons.arrow_back_ios_outlined)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 24, right: 24).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 36.sp,
                      color: Colors.white70,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Username",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                MyTextField(context, "Enter your Username", "Username"),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                MyTextField(context, "• • • • • • • • • • • •", "Password"),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Confirm Password",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                MyTextField(
                    context, "• • • • • • • • • • • •", "Confirm Password"),
                SizedBox(
                  height: 50.h,
                ),
                InkWell(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              width: double.infinity,
                              height: 380.h,
                              decoration: BoxDecoration(
                                color: MyColors.C_363636,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15).r),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 36.h,
                                  ),
                                  SvgPicture.asset(MyImages.ic_touch),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  Text(
                                    "  Please hold your finger at the \nfingerprint scanner to verify your \n                      identity",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 24.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 68.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) => MainPage()),
                                                (route) => false);
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                                color: MyColors.C_8687E7,
                                                fontSize: 20.sp),
                                          )),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Use Password",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: MyColors.C_8687E7,
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            );}
                      );
                    }
                  },
                  child: MyButton(
                    "Login",
                    MyColors.C_4C4C7C,
                  ),
                ),
                SizedBox(
                  height: 31.h,
                ),
                Image.asset(MyImages.im_or),
                SizedBox(
                  height: 29.h,
                ),
                MyButtonImage(
                    "Register with Goole", Colors.black, MyImages.ic_google),
                SizedBox(
                  height: 20.h,
                ),
                MyButtonImage(
                    "Register with Appe", Colors.black, MyImages.ic_appe),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xFF979797),
                        )),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => LoginPage()));
                      },
                      child: Text(" Login",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white70,
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
