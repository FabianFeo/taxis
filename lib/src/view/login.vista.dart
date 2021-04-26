import 'package:flutter/material.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:taxis/src/view/inicioSesionHuella.vista.dart';
import 'package:taxis/src/view/registroTelefono.vista.dart';
import 'inicioSesionTelefono.vista.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double height = 0;
  double width = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: height / 5.5),
                child: Image(
                  image: AssetImage('assets/fondo-1.png'),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: height / 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: Center(
                        child: BouncingWidget(
                          duration: Duration(milliseconds: 100),
                          scaleFactor: 1.5,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegistroTelefono()));
                          },
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              color: Color.fromRGBO(253, 213, 1, 1),
                              child: Container(
                                width: width / 3,
                                height: height / 20,
                                child: Center(
                                  child: Text(
                                    "Registrate",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: height / 60),
                                  ),
                                ),
                              )),
                        ),
                      )),
                      Container(
                          child: Center(
                        child: BouncingWidget(
                          duration: Duration(milliseconds: 100),
                          scaleFactor: 1.5,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InicioSesionTelefono()));
                          },
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              color: Color.fromRGBO(253, 213, 1, 1),
                              child: Container(
                                width: width / 3,
                                height: height / 20,
                                child: Center(
                                  child: Text(
                                    "Inicia sesión",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: height / 60),
                                  ),
                                ),
                              )),
                        ),
                      )),
                    ],
                  ))
            ],
          ),
        ));
  }
}
