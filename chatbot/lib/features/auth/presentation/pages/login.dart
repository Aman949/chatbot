import 'package:chatbot/common/button/button.dart';
import 'package:chatbot/features/home/presentation/pages/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = false;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Back 👋",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                    SizedBox(height: 20),
                    Text(
                      "Please enter your email & password to login.",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 40),
                    customField("Email address", _emailController, validateEmail),
                    SizedBox(height: 30),
                    customField("Password", _passwordController, validatePassword),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Checkbox(
                            value: value,
                            onChanged: (val) {
                              setState(() {
                                value = !value;
                              });
                            }),
                        Text(
                          "Remember me",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(color: Colors.grey),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Text(
                "Forgot Password?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff201D67),
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
                child: Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey)),
                    SizedBox(width: 26),
                    Expanded(
                      child: Text(
                        " or continue with",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(child: Divider(color: Colors.grey)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  social(Icon(Icons.apple, size: 30),
                      size.height * 0.05, size.height * 0.10),
                  SizedBox(width: 20),
                  social(Icon(Icons.facebook, size: 30, color: Colors.blue),
                      size.height * 0.05, size.height * 0.10),
                ],
              ),
              SizedBox(height: 60),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  }
                },
                child: BasicButton(
                    title: "Log in",
                    color: Color(0xff6972F0),
                    textColor: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customField(String text, TextEditingController controller, String? Function(String?)? validator) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        SizedBox(height: 10),
        TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffF7F8FA),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: const Color(0xffF7F8FA)),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        )
      ],
    );
  }

  Widget social(Widget icon, double height, double width) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 241, 239, 239),
        borderRadius: BorderRadius.circular(20),
      ),
      child: icon,
    );
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Email is required';
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Password is required';
    if (value.length < 6) return 'Password must be at least 6 characters';
    return null;
  }
}
