import 'package:flutter/material.dart';

class BasicButton extends StatefulWidget {
  final String title;

  final Color  color;
  final Color textColor;

   BasicButton({super.key, required this.title, required this.color, required this.textColor});

  @override
  State<BasicButton> createState() => _BasicButtonState();
}

class _BasicButtonState extends State<BasicButton> {
 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      height: size.height*0.07,
      width: size.width,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
        
      color: widget.color,
      ),
      child: Center(
        child: Text(widget.title,style: TextStyle(
          fontSize: size.height*0.022,
          fontWeight: FontWeight.w500,
          color: widget.textColor
        ),),
      ),
    );
  }
}