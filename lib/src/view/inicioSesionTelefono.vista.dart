import 'package:flutter/material.dart';
import 'package:bouncing_widget/bouncing_widget.dart';

class InicioSesionTelefono extends StatefulWidget {
  InicioSesionTelefono({Key key}) : super(key: key);

  @override
  _InicioSesionTelefonoState createState() => _InicioSesionTelefonoState();
}

class _InicioSesionTelefonoState extends State<InicioSesionTelefono> {
  double height = 0;
  double width = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: height / 9),
            child: Image(
              image: AssetImage('assets/logo-texto.png'),
              width: 150,
            ),
          ),
          Text(
            "Inicia con tu telefono",
            style: TextStyle(fontSize: 25),
          ),
          Container(
            margin: EdgeInsets.only(top: height / 9, bottom: height / 9),
            child: Image(
              image: AssetImage('assets/logo-texto.png'),
              width: 150,
            ),
          ),
          Container(
              child: Center(
            child: BouncingWidget(
              duration: Duration(milliseconds: 100),
              scaleFactor: 1.5,
              onPressed: () {},
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
    );
  }
}
