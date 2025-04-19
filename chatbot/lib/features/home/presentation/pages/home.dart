import 'package:chatbot/common/button/button.dart';
import 'package:chatbot/core/config/assets/app_vector.dart';
import 'package:chatbot/features/chat/presentation/pages/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: SvgPicture.asset(AppVector.logo),
        centerTitle: true,
        title: Text(
          "Qubiko AI",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(AppVector.logo),
          ),
          SizedBox(height: 40),
          Text(
            "Welcome to\nQubiko AI👋",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 20),
          Text(
            "Start chatting with ChattyAI now.\nYou can ask me anything.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20,color: Colors.black38, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
            },
            child: BasicButton(title: "Start Chat", color: Color(0xff6972F0), textColor: Colors.white))
        ],
      ),
    );
  }
}
