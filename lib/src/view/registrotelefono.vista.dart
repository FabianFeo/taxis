import 'package:flutter/material.dart';

class RegistroTelefono extends StatefulWidget {
  RegistroTelefono({Key key}) : super(key: key);

  @override
  _RegistroTelefonoState createState() => _RegistroTelefonoState();
}

class _RegistroTelefonoState extends State<RegistroTelefono> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Text('hola'),
          )
        ],
      ),
      
       
    );
  }
}