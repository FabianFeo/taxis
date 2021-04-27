import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:taxis/src/view/inicioSesionHuella.vista.dart';

class DatosPersonalInicioSesion extends StatefulWidget {
  DatosPersonalInicioSesion({Key key}) : super(key: key);

  @override
  _DatosPersonalInicioSesionState createState() =>
      _DatosPersonalInicioSesionState();
}

class _DatosPersonalInicioSesionState extends State<DatosPersonalInicioSesion> {
  double height = 0;
  double width = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: height / 40),
                child: Center(
                  child: Image(
                    image: AssetImage('assets/logo-texto.png'),
                    height: height / 5,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: height / 40),
                  child: Center(
                    child: Text(
                      'Información personal',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: height / 28,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(top: height / 15),
                  width: width / 1.2,
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Nombre',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        fillColor: Color.fromRGBO(253, 213, 1, 1),
                        hoverColor: Colors.grey,
                        focusColor: Colors.grey,
                      ),
                      onTap: () {},
                      onChanged: (text) {},
                      onSubmitted: (data) {},
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(top: height / 15),
                width: width / 1.2,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Número de cédula',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    fillColor: Color.fromRGBO(62, 127, 159, 1),
                    hoverColor: Colors.grey,
                    focusColor: Colors.grey,
                  ),
                  onTap: () {},
                  onChanged: (text) {},
                  onSubmitted: (data) {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height / 15),
                width: width / 1.2,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Correo',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    fillColor: Color.fromRGBO(62, 127, 159, 1),
                    hoverColor: Colors.grey,
                    focusColor: Colors.grey,
                  ),
                  onTap: () {},
                  onChanged: (text) {},
                  onSubmitted: (data) {},
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: height / 10),
                  child: Center(
                    child: BouncingWidget(
                      duration: Duration(milliseconds: 100),
                      scaleFactor: 1.5,
                      onPressed: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InicioSesionHuella()));
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
                                "Listo",
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
          ),
        ),
      ),
    );
  }
}
