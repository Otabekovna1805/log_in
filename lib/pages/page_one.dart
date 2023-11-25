import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:log_in/constants/colors.dart';
import 'package:log_in/constants/strings.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  bool check = false;
  bool _passwordvisible = false;
  
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Image.asset(
          "assets/image/navigate.png",
          height: 18,
          width: 26,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 75.sp),
              child: Text(
                Strings.logIn,
                style: TextStyle(
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w600,
                    fontSize: 40.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.sp),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: Strings.email,
                    helperStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: Transform.scale(
                        scale: 0.35.sp,
                        child: Image.asset("assets/icons/email.png"),
                    ),
                    filled: true,
                    fillColor: CustomColors.textFieldColor.withOpacity(0.4.sp),
                    // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: emailController.text.trim().contains("other") ?? CustomColors.red : null)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.sp)),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.sp),
              child: TextFormField(
                enabled: true,
                obscureText: _passwordvisible,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      padding: const EdgeInsets.only(bottom: 11),
                      splashRadius: 1,
                      icon: Icon(!_passwordvisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _passwordvisible = !_passwordvisible;
                        });
                      },
                    ),
                    hintText: Strings.password,
                    helperStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: Transform.scale(
                        scale: 0.35.sp,
                        child: Image.asset("assets/icons/password.png")),
                    filled: true,
                    fillColor: CustomColors.textFieldColor.withOpacity(0.4.sp),
                    focusColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.sp)),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.sp, vertical: 15.sp),
              child: Row(
                children: [
                  Checkbox(
                    value: check,
                    onChanged: (value) => setState(() => check = !check),
                    checkColor: Colors.white,
                    splashRadius: 6.sp,
                    activeColor: CustomColors.red,
                    side: const BorderSide(color: CustomColors.red, width: 3),
                  ),
                  const Text(
                    Strings.rememberMe,
                    style: TextStyle(
                        color: CustomColors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  )
                ],
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.all(Radius.circular(50.sp)),
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 53.sp,
                width: 317.sp,
                decoration: BoxDecoration(
                  color: CustomColors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.sp),
                  ),
                ),
                child: const Text(
                  Strings.signIn,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: "Montserrat"),
                ),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Text(
              Strings.forgotPassword,
              style: TextStyle(
                color: CustomColors.red,
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
              ),
            ),
            SizedBox(
              height: 30.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 83.sp,
                  height: 1.sp,
                  color: CustomColors.textFieldColor,
                ),
                Text(
                  Strings.continueWith,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "Jost",
                      fontSize: 15.sp,
                      color: CustomColors.textColor),
                ),
                Container(
                  width: 83.sp,
                  height: 1.sp,
                  color: CustomColors.textFieldColor,
                ),
              ],
            ),
            SizedBox(
              height: 30.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 80.sp,
                  height: 50.sp,
                  decoration: BoxDecoration(
                      border: Border.all(color: CustomColors.textFieldColor),
                      borderRadius: BorderRadius.all(Radius.circular(15.sp))),
                  child: Image.asset(
                    "assets/image/facebook.png",
                    height: 27.sp,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 80.sp,
                  height: 50.sp,
                  decoration: BoxDecoration(
                      border: Border.all(color: CustomColors.textFieldColor),
                      borderRadius: BorderRadius.all(Radius.circular(15.sp))),
                  child: Image.asset(
                    "assets/image/google.png",
                    height: 27.sp,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 80.sp,
                  height: 50.sp,
                  decoration: BoxDecoration(
                      border: Border.all(color: CustomColors.textFieldColor),
                      borderRadius: BorderRadius.all(Radius.circular(15.sp))),
                  child: Image.asset(
                    "assets/image/apple.png",
                    height: 27.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.sp,),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: Strings.haveAccount,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: CustomColors.textFieldColor)),
                TextSpan(
                    text: Strings.signIn,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: CustomColors.red,
                        fontWeight: FontWeight.w700))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
