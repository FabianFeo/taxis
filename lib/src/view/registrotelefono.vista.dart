import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';

class RegistroTelefono extends StatefulWidget {
  RegistroTelefono({Key key}) : super(key: key);

  @override
  _RegistroTelefonoState createState() => _RegistroTelefonoState();
}

class _RegistroTelefonoState extends State<RegistroTelefono> {
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
            margin: EdgeInsets.only(top: height / 7),
            child: Center(
              child: Image(
                image: AssetImage('assets/logo-texto.png'),
                height: height / 3,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: height / 7),
              width: width / 1.2,
              child: Center(
                child: TextFormField(
                  initialValue: 'Número de teléfono',
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),                      
                    ),
                    fillColor: Colors.yellow,
                    hoverColor: Colors.grey,
                    focusColor: Colors.grey,
                  ),
                  onTap: () {},
                  onChanged: (text) {},
                ),
              )),
          Container(
              margin: EdgeInsets.only(top: height / 20),
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
                            "Continuar",
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
