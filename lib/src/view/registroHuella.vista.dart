import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:taxis/src/view/mapaUsuario.vista.dart';

class RegistroHuella extends StatefulWidget {
  RegistroHuella({Key key}) : super(key: key);

  @override
  _RegistroHuellaState createState() => _RegistroHuellaState();
}

class _RegistroHuellaState extends State<RegistroHuella> {
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
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: height / 15),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: height / 20),
                child: Image(
                  image: AssetImage('assets/logo-sombra.png'),
                  width: 150,
                ),
              ),
               Container(
                  margin: EdgeInsets.only(top: height / 40),
                  child: Center(
                    child: Text(
                      'Nice-Cab',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: height / 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )),
              Text(
                "Registra tu huella",
                style: TextStyle(fontSize: 25),
              ),
              Container(
                margin: EdgeInsets.only(top: height / 9, bottom: height / 9),
                child: Image(
                  image: AssetImage('assets/icono-huella.png'),
                  width: 150,
                ),
              ),
              Container(
                  child: Center(
                child: BouncingWidget(
                  duration: Duration(milliseconds: 100),
                  scaleFactor: 1.5,
                  onPressed: () {
                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MapaPageUser()));
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
        ));
  }
}