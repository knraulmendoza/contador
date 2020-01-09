import 'package:contador/src/home_page.dart';
import 'package:contador/src/registrar_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login>{
  String _user, _password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.green[100], Colors.blue[800]])
                      ),
              height: MediaQuery.of(context).size.height * 1
              ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/logo.png'),
                  alignment: Alignment.topCenter),
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    // margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 200.0),
                    // elevation: 60.0,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      // height: 300,
                      child: SingleChildScrollView(
                        child: Form(
                          key: _formKey,
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                'INICIAR SESIÓN',
                                style: TextStyle(
                                    color: Colors.blue[800], fontSize: 25.0),
                              ),
                              TextFormField(
                                validator: (value){
                                  if (value.isEmpty) {
                                    return 'Este campo es obligatorio';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelText: 'Usuario',
                                // border: OutlineInputBorder(),
                                ),
                                onChanged: (user){
                                  setState(() {
                                    _user = user;
                                  });
                                },
                              ),
                              TextFormField(
                                obscureText: true,
                                validator: (value){
                                  if (value.isEmpty) {
                                    return 'Este campo es obligatorio';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelText: 'Contraseña',
                                  // hintStyle: Colors.blue[800]
                                ),
                                onChanged: (pass){
                                  _password = pass;
                                  setState(() {
                                    
                                  });
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                              ),
                              GestureDetector(
                                onTap: () => {
                                  print('Ha olvidado su contraseña'),
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()))
                                },
                                child: Text('Olvido su contraseña?',
                                    style: TextStyle(
                                      color: Colors.blue[800],
                                    )),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    print('usuarios : $_user, contraseña: $_password');
                                    print('excelente');
                                  }
                                },
                                minWidth: double.infinity,
                                color: Colors.blue[800],
                                elevation: 10.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Text(
                                  'Iniciar sesión',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                textColor: Colors.white,
                                height: 30.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Nuevo usuario?'),
                                  GestureDetector(
                                    onTap: ()  {
                                      print('Se ha registrado');
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrarPage()));
                                    },
                                    child: Text(
                                      ' Regístrese',
                                      style: TextStyle(color: Colors.blue[800]),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(FontAwesomeIcons.facebook, color: Colors.blue[900]),
                                    onPressed: () => {print('Facebook')},
                                  ),
                                  IconButton(
                                    icon: Icon(FontAwesomeIcons.envelope, color: Colors.red),
                                    onPressed: () => {print('gmail')},
                                  ),
                                  IconButton(
                                    icon: Icon(FontAwesomeIcons.twitter, color: Colors.blue),
                                    onPressed: () {
                                      print('twitter');
                                      
                                    },
                                  )
                                ],
                              ),
                              //Text('Usuario: $_user'),
                              //Text('Contraseña: $_password')
                            ],
                          ),
                        )
                      ),
                    )),
              )),
          //  Positioned(
          //   top: 0.0,
          //   left: 0.0,
          //   right: 0.0,
          //   child: AppBar(        // Add AppBar here only
          //     backgroundColor: Colors.transparent,
          //     elevation: 0.0,
          //     title: Text("Doctor Form"),
          //   ),
          // ),
        ],
      ),
    );
  }

}