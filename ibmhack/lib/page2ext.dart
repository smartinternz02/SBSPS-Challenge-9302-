import 'package:flutter/material.dart';
import 'package:ibmhack/final.dart';
import 'package:ibmhack/secondscreen.dart';
import 'package:ibmhack/connection.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Image imagesAssets(String str, Size size) {
  var assetImage = AssetImage(str);
  return Image(image: assetImage);
}

Widget buttonContainer(String img, String str,
    {double bot = 20, double lt = 0, required BuildContext ctxt1}) {
  var _users = [];
  var _sharan = [];
  void fetchpost() async {
    try {
      final res =
          await http.get(Uri.parse('http://127.0.0.1:5000/api?Query=' + str));
      final jsonData = jsonDecode(res.body) as List;

      _users = jsonData;
    } catch (err) {}
  }

  return InkWell(
    child: Container(
        height: 300,
        width: 270,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          // gradient: const LinearGradient(
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomLeft,
          //   colors:Color(0x8AFFFFFF),
          // ),
        ),
        // ignore: unnecessary_new
        child: new Stack(
          children: <Widget>[
            Align(
                alignment: FractionalOffset.center,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(lt, 10, 15, bot),
                    child: Image.asset(img))),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  str,
                  style: TextStyle(
                    fontFamily: 'AndadaPro',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        )),
    onTap: () {
      fetchpost();
      _users[0]['n'] = str;
      setname(_users[0]['n']);
      get_dt(_users);
      Navigator.push(
          ctxt1, new MaterialPageRoute(builder: (ctxt1) => new secscreen()));
    },
  );
}
