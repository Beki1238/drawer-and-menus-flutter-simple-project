import 'package:flutter/material.dart';
import 'package:drawer_and_menus/screens/home.dart';
import 'package:drawer_and_menus/screens/cs.dart';
import 'package:drawer_and_menus/screens/it.dart';
import 'package:drawer_and_menus/screens/sw.dart';

// import 'package:drawer_and_menus/screens/cs.dart';
void main() {
  runApp(const NavigationExample());
}

class NavigationExample extends StatelessWidget {
  const NavigationExample({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Stack Example',
      // home: Home(),
      home: BottonNav(),
    );
  }
}

class BottonNav extends StatefulWidget {
  const BottonNav({super.key});

  @override
  State<BottonNav> createState() => _BottonNavState();
}

class _BottonNavState extends State<BottonNav> {
  int index = 0;
  final pages = [Home(), Cs(), It(), Sw()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          backgroundColor: const Color.fromARGB(255, 150, 140, 0),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.tealAccent,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 15,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            print('${pages[value]} bottom navigation pressed');
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.computer), label: "CS"),
            BottomNavigationBarItem(icon: Icon(Icons.memory), label: "IT"),
            BottomNavigationBarItem(icon: Icon(Icons.code), label: "SE")
          ],
        ));
  }
}