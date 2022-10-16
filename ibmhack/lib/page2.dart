//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ibmhack/page2ext.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext ctxt) {
    return Scaffold(
      backgroundColor: Colors.white, //Color(0xFF1b1b1b)
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/bg.jpg"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 10, 30),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 180,
                    ),
                    buttonContainer('assets/laptop.png', "laptop", ctxt1: ctxt),
                    const SizedBox(
                      width: 30,
                    ),
                    buttonContainer('assets/mobile.png', "mobile",
                        bot: 40, ctxt1: ctxt),
                    const SizedBox(
                      width: 30,
                    ),
                    buttonContainer('assets/headset.png', "bluethoothheadset",
                        ctxt1: ctxt),
                    const SizedBox(
                      width: 30,
                    ),
                    buttonContainer('assets/smarttv.png', "television",
                        lt: 30, ctxt1: ctxt),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 180,
                    ),
                    buttonContainer('assets/bluetooth.png', "bluetoothspeaker",
                        ctxt1: ctxt),
                    const SizedBox(
                      width: 30,
                    ),
                    buttonContainer('assets/powerbank.png', "powerbank",
                        ctxt1: ctxt),
                    const SizedBox(
                      width: 30,
                    ),
                    buttonContainer('assets/ipad.png', "tablet", ctxt1: ctxt),
                    const SizedBox(
                      width: 30,
                    ),
                    buttonContainer('assets/smartwatch.png', "smartwatch",
                        bot: 60, ctxt1: ctxt),
                    SizedBox(
                      width: 100,
                    ),
                    // IconButton(
                    //   icon: Image.asset('assets/rocket.png'),
                    //   iconSize: 70,
                    //   padding: EdgeInsets.fromLTRB(50, 100, 0, 0),
                    //   onPressed: () {},
                    // ),
                    // Align(
                    //     alignment: FractionalOffset.center,
                    //     child: Padding(
                    //         padding: const EdgeInsets.fromLTRB(40, 70, 0, 0),
                    //         child: Image.asset(
                    //           'assets/rocket.png',
                    //           height: 100,
                    //           width: 100,
                    //         ))),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
