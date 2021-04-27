import 'package:flutter/material.dart';
import 'package:taxis/src/view/viajeActivo.vista.dart';

class MapaPageUser extends StatefulWidget {
  MapaPageUser({Key key}) : super(key: key);

  @override
  _MapaPageUserState createState() => _MapaPageUserState();
}

class _MapaPageUserState extends State<MapaPageUser> {
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
                margin: EdgeInsets.only(top: height / 15),
                width: width / 1.2,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Ubricacion actual',
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
                    hintText: '¿A dónde vamos?',
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
                child: Stack(
                  children: [
                    Container(
                      height: height / 1.1,
                      child: Image(
                        image: AssetImage('assets/icono-mapa-grande.png'),
                        height: height / 1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height / 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                   Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ViajeActivoVista()));
                                     },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/ICONOS/Casa_4.png'),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: width / 20),
                                      child: Text('Casa'),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                          'assets/ICONOS/Trabajo_4.png'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width / 20),
                                    child: Text('Trabajo'),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Image(
                                      image:
                                          AssetImage('assets/ICONOS/Fav_4.png'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width / 20),
                                    child: Text('Favoritos'),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
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
