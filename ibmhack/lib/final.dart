import 'package:flutter/material.dart';

List<String> product = <String>[
  'BATTERY',
  'Laptop',
  'Ayan',
  'Ben',
  'Bob',
  'Charlie',
  'Cook',
  'Carline',
];

final List<List<String>> recprod = <List<String>>[];

// void get_data2(var a) {
//   var recl = [];
//   recl.add(a['n']);
//   recl.add(a['name']);
//   recl.add(a['price']);
//   recl.add(a['rate']);
//   recprod.addAll(recl as Iterable<List<String>>);
// }

class finalpage extends StatefulWidget {
  const finalpage({super.key});

  @override
  State<finalpage> createState() => _finalpageState();
}

class _finalpageState extends State<finalpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1b1b1b),
      appBar: AppBar(
        centerTitle: true,
        title: Center(
          child: Text('Recommended Products',
              style: TextStyle(
                  color: Colors.white, fontSize: 30, fontFamily: 'AndadaPro'),
              textAlign: TextAlign.center),
        ),
        backgroundColor: Color(0xFF1b1b1b),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(170, 10, 200, 170),
        itemCount: recprod.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 200,
            width: 800,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                ),
              ],
              color: Colors.white, // Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '${recprod[index][0]}',
                      style: TextStyle(
                          fontFamily: 'monomaniacOne',
                          fontSize: 35,
                          color: Color.fromARGB(158, 25, 27, 18)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 100,
                      width: 700,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: FractionalOffset.centerLeft,
                        child: Text(
                          '${recprod[index][1]}',
                          style: TextStyle(
                            fontFamily: 'AndadaPro',
                            fontSize: 30,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                          fontSize: 35,
                          color:
                              Colors.black), //Color.fromARGB(158, 25, 27, 18)
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '${recprod[index][2]}',
                      style: TextStyle(
                          fontFamily: 'monomaniacOne',
                          fontSize: 37,
                          color: Colors
                              .green[500]), //Color.fromARGB(156, 9, 108, 63)
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
                          fontSize: 35,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '${recprod[index][3]}',
                      style: TextStyle(
                          fontFamily: 'monomaniacOne',
                          fontSize: 37,
                          color: Colors
                              .red[500]), //Color.fromARGB(158, 25, 27, 18)
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
