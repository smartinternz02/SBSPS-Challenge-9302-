import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: import_of_legacy_library_into_null_safe
//import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(name());

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  final String assetName = "assets/Group 2.svg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Python Bashers",
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: Center(
          child: Container(
            width: 1200,
            height: 650,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: ListView(
              children: [
                const SizedBox(height: 25),
                SvgPicture.asset('assets/Group 2.svg'),
                const SizedBox(height: 25),
                Text(
                  "ONLINE SHOPPING",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'AndadaPro',
                    fontSize: 48,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
