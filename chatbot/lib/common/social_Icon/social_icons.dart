import 'package:flutter/material.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(child: Divider(color: Colors.white,)),
                Expanded(child: Text("or continue with")),
                Expanded(child: Divider(color: Colors.white,))
              ],
            )
          ],
        ),
      ),
    );
  }
}