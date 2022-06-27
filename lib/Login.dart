import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animation/Home.dart';
import 'package:flutter/material.dart';
import 'Corner.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              /*image: DecorationImage(
                image: AssetImage("image/bg.jpg"),
              fit: BoxFit.cover,
            )*/
              ),
        ),
        Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Kang Tao OS V2.38"),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Container(
            padding: EdgeInsets.all(12),
            child:
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          "# 127.0.0.1 Login ",
                          style: TextStyle(fontSize: 15, color: Colors.white,shadows: [Shadow(blurRadius: 7.0,color: Colors.white)]),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5),

                          child:
                          Text(
                            "Usr: root Password:",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),

                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),

                          child:
                          Text(
                            " *******",
                            style: TextStyle(fontSize: 15, color: Colors.red,shadows: [Shadow(blurRadius: 7.0,color: Colors.red)]),
                          ),

                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "Run Daemon 54 61 73 6B 20 72 75 6E",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Connect to 2804:7F0:B180:D108:95DC:78BA:BE13",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Run",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            " HASHCAT",
                            style: TextStyle(fontSize: 15, color: Colors.red,shadows: [Shadow(blurRadius: 7.0,color: Colors.red)]),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "#HASHCAT:",
                            style: TextStyle(fontSize: 15, color: Colors.red,shadows: [Shadow(blurRadius: 7.0,color: Colors.red)]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            " hashcat -M 0 -A 1",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "#HASHCAT:",
                            style: TextStyle(fontSize: 15, color: Colors.red,shadows: [Shadow(blurRadius: 7.0,color: Colors.red)]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            " C://*****/DOC/AccountPSWDHASH.txt",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),

                      ],
                    ),

                    Row(

                        children: [

                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "#HASHCAT:",
                              style: TextStyle(fontSize: 15, color: Colors.red,shadows: [Shadow(blurRadius: 7.0,color: Colors.red)]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              " Start?",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 5),

                            child: AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                FlickerAnimatedText(' Y/N', textStyle: TextStyle(fontSize: 15,color: Colors.red,shadows: [Shadow(blurRadius: 7.0,color: Colors.red)]),speed: Duration(milliseconds: 400)),
                              ],
                              pause: Duration(milliseconds: 100),
                              onTap: () {
                                print("Tap Event");
                              },
                            ),

                          ),
                        ]
                    ),



                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          fillColor: Colors.black38.withOpacity(0.3),
                          filled: false,
                          enabledBorder: CutCornersBorder(
                              borderSide:
                              BorderSide(color: Colors.white, width: 1)),
                          focusedBorder: CutCornersBorder(
                              borderSide:
                              BorderSide(width: 3.0, color: Colors.white)),
                          prefixIcon:
                          Icon(Icons.alternate_email, color: Colors.white),
                          labelText: "||  E-mail",
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          fillColor: Colors.black38.withOpacity(0.3),
                          filled: false,
                          enabledBorder: CutCornersBorder(
                              borderSide:
                              BorderSide(color: Colors.white, width: 1)),
                          focusedBorder: CutCornersBorder(
                              borderSide:
                              BorderSide(width: 3.0, color: Colors.white)),
                          prefixIcon: Icon(Icons.lock_open, color: Colors.white),
                          labelText: "||  Password",
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Text(
                      "Esqueci a senha",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Container(
                      width: 250,
                      padding: EdgeInsets.only(top: 40),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                            },
                            child:
                            Image.asset("image/4.png"),
                          ),

                          Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 60),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Não é um usuário ?   ",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Text(
                          "Cadastre-se",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              )
          ),
        )
      ],
    );
  }
}
