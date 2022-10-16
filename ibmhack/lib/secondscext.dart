//  import 'dart:ffi';

import 'package:flutter/material.dart';

Widget secondscreenext(
  String name,
  String rating,
  String price,
) =>
    Column(
      children: <Widget>[
        Container(
          height: 150,
          width: 1100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 40,
              ),
              Container(
                height: 100,
                width: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: FractionalOffset.centerLeft,
                  child: Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'AndadaPro',
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Price',
                    style: TextStyle(fontFamily: 'monomaniacOne', fontSize: 35),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    price,
                    style: TextStyle(fontFamily: 'monomaniacOne', fontSize: 37),
                  ),
                ],
              ),
              SizedBox(
                width: 80,
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rating',
                    style: TextStyle(fontFamily: 'monomaniacOne', fontSize: 35),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    rating,
                    style: TextStyle(fontFamily: 'monomaniacOne', fontSize: 37),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
