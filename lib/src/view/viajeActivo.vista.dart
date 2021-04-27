import 'package:flutter/material.dart';

class ViajeActivoVista extends StatefulWidget {
  ViajeActivoVista({Key key}) : super(key: key);

  @override
  _ViajeActivoVistaState createState() => _ViajeActivoVistaState();
}

class _ViajeActivoVistaState extends State<ViajeActivoVista> {
  @override
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
                margin: EdgeInsets.only(top: height / 20),
                width: width / 1.2,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Casa',
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
                margin: EdgeInsets.only(top: height / 150),
                width: width / 1.2,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Trabajo',
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
                margin: EdgeInsets.only(top: height / 150),
                child: Stack(
                  children: [
                    Container(
                      height: height / 1.3,
                      child: Image(
                        image: AssetImage('assets/viaje-activo.png'),
                        height: height / 1,
                      ),
                    ),                   
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
