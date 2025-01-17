import 'package:flutter/material.dart';
import 'package:drawer_and_menus/Screens/button_style.dart';
import 'package:drawer_and_menus/Screens/custom_app_bar.dart';
import 'package:drawer_and_menus/Screens/it.dart';

class Cs extends StatelessWidget {
  const Cs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context,"computer science screen"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => It()),
                );
              },
              style: customButtonStyle(),
              child: const Text("go to Information technology i don't know any thing "),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: customButtonStyle(),
              child: const Text("back to home"),
            )
          ],
        ),
      ),
    );
  }
}
