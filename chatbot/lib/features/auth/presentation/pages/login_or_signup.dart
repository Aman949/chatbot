import 'package:chatbot/common/button/button.dart';
import 'package:chatbot/core/config/assets/app_image.dart';
import 'package:chatbot/features/auth/presentation/pages/login.dart';
import 'package:chatbot/features/auth/presentation/pages/signup.dart';
import 'package:flutter/material.dart';

class LoginOrSignup extends StatefulWidget {
  const LoginOrSignup({super.key});

  @override
  State<LoginOrSignup> createState() => _LoginOrSignupState();
}

class _LoginOrSignupState extends State<LoginOrSignup> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.grad),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to\nQubiko AI👋",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size.height * 0.06,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: size.height * 0.07),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
              child: BasicButton(
                color: Color(0xff6972F0),
                title: 'Log in',
                textColor: Colors.white,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
              },
              child: BasicButton(
                color: Colors.white,
                title: 'Sign up',
                textColor: Color(0xff6972F0),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Expanded(child: Divider(color: Colors.white)),
                  SizedBox(width: 26),
                  Expanded(
                    child: Text(
                      " or continue with",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(child: Divider(color: Colors.white)),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                social(Icon(Icons.apple,size: 30,),size.height * 0.05 , size.height * 0.10),
                SizedBox(width: 20,),
                  social(Icon(Icons.facebook,size: 30,color: Colors.blue,),size.height * 0.05, size.height * 0.10),
              
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget social(Widget icon, double height, double width) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: icon,
    );
  }
}
