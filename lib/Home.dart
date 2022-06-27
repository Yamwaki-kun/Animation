import 'package:animation/Telas/Add.dart';
import 'package:animation/Telas/Discover.dart';
import 'package:animation/Telas/Like.dart';
import 'package:animation/Model/Post.dart';
import 'package:animation/Telas/News.dart';
import 'package:animation/Telas/Profile.dart';
import 'package:flutter/material.dart';


import 'dart:async';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  int _indiceAtual = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      News(),
      Discover(),
      Add(),
      Like(),
      Profile()
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(16),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar:
      BottomNavigationBar(
        backgroundColor: Color(0x38ADADAD),
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState((){
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(label:"",icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(label:"",icon: Icon(Icons.crop_square)),
          BottomNavigationBarItem(label:"",icon: Icon(Icons.add)),
          BottomNavigationBarItem(label:"",icon: Icon(Icons.favorite_border)),
          BottomNavigationBarItem(label:"",icon: Icon(Icons.person_outline_outlined)),

        ],
      )
      ,

    );
  }
}
