import 'package:flutter/material.dart';
import 'package:drawer_and_menus/Screens/button_style.dart';
import 'package:drawer_and_menus/Screens/custom_app_bar.dart';

class Sw extends StatelessWidget {
  const Sw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context,"software engineering screen"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: customButtonStyle(),
                child: const Text("back to it "))
          ],
        ),
      ),
    );
  }
}
