import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'DatosPersonalInicioSesion.vista.dart';


class CodigoVerificacionInicioSesion extends StatefulWidget {
  CodigoVerificacionInicioSesion({Key key}) : super(key: key);

  @override
  _CodigoVerificacionInicioSesionState createState() =>
      _CodigoVerificacionInicioSesionState();
}

class _CodigoVerificacionInicioSesionState
    extends State<CodigoVerificacionInicioSesion> {
  double height = 0;
  double width = 0;

  var errorController;

  var textEditingController;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(top: height / 1.2),
              child: Center(
                child: BouncingWidget(
                  duration: Duration(milliseconds: 100),
                  scaleFactor: 1.5,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DatosPersonalInicioSesion()));
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
          Container(
            margin: EdgeInsets.only(bottom: height / 1.5),
            child: Center(
              child: Image(
                image: AssetImage('assets/logo-texto.png'),
                height: height / 5,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: height / 2.5),
              child: Center(
                child: Text(
                  'Código de verificación',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: height / 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: height / 5),
            child: Center(
              child: Image(
                image: AssetImage('assets/fondo-2.png'),
                height: height / 2,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: height / 1.87, left: width / 22, right: width / 22),
            child: PinCodeTextField(
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                inactiveFillColor: Colors.white,
                inactiveColor: Colors.black,
                fieldHeight: 50,
                fieldWidth: 40,
                selectedColor: Color.fromRGBO(253, 213, 1, 1),
                selectedFillColor: Colors.white,
                activeColor: Color.fromRGBO(253, 213, 1, 1),
                activeFillColor: Colors.white,
              ),
              animationDuration: Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
              errorAnimationController: errorController,
              controller: textEditingController,
              onCompleted: (v) {
                print("Completed");
              },
              onChanged: (value) {
                print(value);
                setState(() {});
              },
              appContext: context,
            ),
          ),
        ],
      ),
    );
  }
}
