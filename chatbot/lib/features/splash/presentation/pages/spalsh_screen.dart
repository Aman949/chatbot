import 'package:chatbot/core/config/assets/app_vector.dart';
import 'package:chatbot/features/auth/presentation/pages/login_or_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    redirect();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(AppVector.logo)),
            SizedBox(height: 20,),
          Text("Qubiko AI",textAlign: TextAlign.center,style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }

  Future<void> redirect()async{
   await Future.delayed(Duration(seconds: 2));
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginOrSignup()));
  }
}