// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() => runApp(Home());
// var str = "load";

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   var _users = [];
//   var val;
//   void fetchpost() async {
//     try {
//       final res =
//           await http.get(Uri.parse('http://127.0.0.1:5000/?Query=smartwatch'));
//       final jsonData = jsonDecode(res.body) as List;
//       setState(() {
//         _users = jsonData;
//         val = _users[0];
//       });
//     } catch (err) {}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(title: Text("dummy")),
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Center(
//               child: ElevatedButton(onPressed: fetchpost, child: Text("Load")),
//             ),
//             Text("$val['name']"),
//           ],
//         ),
//       ),
//     ));
//   }
// }

// // void loadrecomm() async {
// //   var res =
// //       await http.get(Uri.parse('http://127.0.0.1:5000/?Query=smartwatch'));
// //   if (res.statusCode == 200) {
// //     var jsonData = jsonDecode(res.body);
// //     if (jsonData.isNotEmpty) {
// //       _users = jsonData;
// //     }

// //     print(jsonData);
// //   }
// // }
