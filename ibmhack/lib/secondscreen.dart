import 'package:flutter/material.dart';
import 'package:ibmhack/final.dart';
import 'package:ibmhack/page2.dart';
import 'package:ibmhack/page2ext.dart';
import 'package:ibmhack/secondscext.dart';
import 'package:ibmhack/connection.dart';

// final List<List<String>> allproducts = <List<String>>[
//   ['Lenovo', '55,000', '5.5'],
//   ['Dell', '594383', '8.0'],
//   ['mi', '500383', '10.0']
// ];
var allproducts;
void get_dt(var a) {
  // allproducts[0][0] = a[0]['name'];
  // allproducts[0][1] = a[0]['price'];
  // allproducts[0][2] = a[0]['rating'];
  // allproducts[1][0] = a[1]['name'];
  // allproducts[1][1] = a[1]['price'];
  // allproducts[1][2] = a[1]['rating'];
  // allproducts[2][0] = a[2]['name'];
  // allproducts[2][1] = a[2]['price'];
  // allproducts[2][2] = a[2]['rating'];
  allproducts = a;
}
// for (var i = 0; i < li.length; i++) {
//   // TO DO
//   var currentElement = li[i];
// }

var prodname;
void setname(var a) {
  prodname = a;
  // get_data2(a[0]);
}

// void sharanvarun() {
//   get_data2(prodname);
// }

class secscreen extends StatefulWidget {
  const secscreen({super.key});

  @override
  State<secscreen> createState() => _secscreenState();
}

class _secscreenState extends State<secscreen> {
  @override
  Widget build(BuildContext ctxt) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Laptops",
      home: Scaffold(
        backgroundColor: Color(0xFF1b1b1b),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70), // here the desired height
          child: AppBar(
            centerTitle: true,
            title: Center(
              child: Text('${prodname}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'AndadaPro'),
                  textAlign: TextAlign.center),
            ),
            backgroundColor: Color(0xFF1b1b1b),
          ),
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
              padding: EdgeInsets.fromLTRB(150, 20, 150, 0),
              child: Column(
                children: <Widget>[
                  new ListView.builder(
                    // padding: const EdgeInsets.fromLTRB(200, 10, 200, 10),
                    itemCount: allproducts.length,

                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext ctxt, int index) {
                      //allproducts.shuffle();
                      //get_data2(prodname[0]);
                      return Container(
                        height: 200,
                        width: 800,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white, //Colors.white,
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 40,
                            ),
                            // Column(
                            //   children: <Widget>[
                            //     SizedBox(
                            //       height: 15,
                            //     ),
                            //     Text(
                            //       '',
                            //       style: TextStyle(
                            //           fontFamily: 'monomaniacOne',
                            //           fontSize: 35),
                            //     ),
                            //     SizedBox(
                            //       height: 3,
                            //     ),
                            Container(
                              height: 100,
                              width: 700,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Align(
                                alignment: FractionalOffset.centerLeft,
                                child: Text(
                                  '${allproducts[index]['name']}',
                                  style: TextStyle(
                                    fontFamily: 'AndadaPro',
                                    fontSize: 30,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),

                            //),
                            // Container(
                            //   height: 100,
                            //   width: 700,
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(10),
                            //   ),
                            //   child: Align(
                            //     alignment: FractionalOffset.centerLeft,
                            //     child: Text(
                            //       '          ${product[index]}\n\n${names[index]}',
                            //       style: TextStyle(
                            //         fontFamily: 'AndadaPro',
                            //         fontSize: 30,
                            //         color: Colors.black,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            SizedBox(
                              width: 70,
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Price',
                                  style: TextStyle(
                                      fontFamily: 'monomaniacOne',
                                      fontSize: 35),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '${allproducts[index]['price']}',
                                  style: TextStyle(
                                      fontFamily: 'monomaniacOne',
                                      fontSize: 37,
                                      color: Colors.green[500]),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Rating',
                                  style: TextStyle(
                                      fontFamily: 'monomaniacOne',
                                      fontSize: 35),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '${allproducts[index]['rate']}',
                                  style: TextStyle(
                                      fontFamily: 'monomaniacOne',
                                      fontSize: 37,
                                      color: Colors.red[500]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 250,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            ctxt,
                            new MaterialPageRoute(
                                builder: (ctxt) => new second()));
                      },
                      child: Text("<<    Search Other Products    <<",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'AndadaPro',
                              decoration: TextDecoration.underline))),
                  SizedBox(
                    height: 30,
                  ),
                  // TextButton(
                  //     onPressed: () {
                  //       Navigator.push(
                  //           ctxt,
                  //           new MaterialPageRoute(
                  //               builder: (ctxt) => new finalpage()));
                  //     },
                  //     child: Text(
                  //         ">>    Recommended Products Based on your Search History    >>",
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 40,
                  //             fontFamily: 'AndadaPro',
                  //             decoration: TextDecoration.underline))),
                  SizedBox(
                    height: 300,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
