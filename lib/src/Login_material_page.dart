  
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPageMateial(),
  )
);

class LoginPageMateial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.blue[900],
                  Colors.blue[800],
                  Colors.blue[400]
                ]
              )
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08, right: 20.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/logo.png'),
                  alignment: Alignment.topRight
              ),
            ),
          ),
          //body: 
          Container(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(1, Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),)),
                      SizedBox(height: 10,),
                      FadeAnimation(1.3, Text("Bienvenido woiner", style: TextStyle(color: Colors.white, fontSize: 18),)),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(    
                        children: <Widget>[
                          SizedBox(height: 20,),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10)
                              )]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                  ),
                                  child: TextField(

                                    decoration: InputDecoration(
                                      hintText: "Correo ó usuario",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Contraseña",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          FadeAnimation(1.5, Text("Olvido su contraseña?", style: TextStyle(color: Colors.grey),)),
                          SizedBox(height: 20,),
                          FadeAnimation(1.6, Container(
                            height: 40,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue[900]
                            ),
                            child: Center(
                              child: Text("Iniciar sesión", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          )),
                          SizedBox(height: 20,),
                          FadeAnimation(1.7, Text("Continuar con una red social", style: TextStyle(color: Colors.grey),)),
                          SizedBox(height: 30,),
                          Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  iconSize: 40.0,
                                  icon: Icon(FontAwesomeIcons.facebook, color: Colors.blue[900]),
                                  onPressed: () => {print('Facebook')},
                                ),
                                IconButton(
                                  iconSize: 40.0,
                                  icon: Icon(FontAwesomeIcons.envelope, color: Colors.red),
                                  onPressed: () => {print('gmail')},
                                ),
                                IconButton(
                                  iconSize: 40.0,
                                  icon: Icon(FontAwesomeIcons.twitter, color: Colors.blue),
                                  onPressed: () {
                                    print('twitter');
                                    
                                  },
                                )
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          
         ],
      )
    );
  }
}