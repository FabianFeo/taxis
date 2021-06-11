import 'package:flutter/material.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:taxis/src/view/codigoVerificacionInicioSesion.vista.dart';

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
                margin: EdgeInsets.only(top: height / 10),
                child: Center(
                  child: Image(
                    image: AssetImage('assets/logo-sombra.png'),
                    height: height / 3,
                  ),
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
                  margin: EdgeInsets.only(top: height / 20),
                  child: Center(
                    child: BouncingWidget(
                      duration: Duration(milliseconds: 100),
                      scaleFactor: 1.5,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CodigoVerificacionInicioSesion()));
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
                                "Verificar",
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
