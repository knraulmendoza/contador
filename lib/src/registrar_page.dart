import 'package:flutter/material.dart';

class RegistrarPage extends StatefulWidget {
  RegistrarPage({Key key}) : super(key: key);

  @override
  _RegistrarPageState createState() => _RegistrarPageState();
}

class _RegistrarPageState extends State<RegistrarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       child: Center(child: Text('Registrar'),),
      ),
    );
  }
}