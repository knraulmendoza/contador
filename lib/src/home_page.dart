import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final TextStyle estilo =  TextStyle(fontSize: 30.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contador de clicks', style: estilo),
            Text('0', style: estilo),
            // RaisedButton(
            //   color: Colors.deepPurpleAccent,
            //   padding: const EdgeInsets.all(8.0),
            //   textColor: Colors.white,
            //   onPressed: ()=>{
            //   Navigator.pop(context)
            //   },
            //   child: Text('Ir a atras'),
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}