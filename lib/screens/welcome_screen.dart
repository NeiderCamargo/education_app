import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        //contenedor hijo
        width: MediaQuery.of(context).size.width, //ancho de la pantalla
        height: MediaQuery.of(context).size.height, //alto de la pantalla
        child: Stack(
          //widget que tiene un contenedor hijo (children)
          children: [
            //widget que contiene el primer contenedor que tiene una imagen
            Stack(
              children: [
                Container(
                  width:
                      MediaQuery.of(context).size.width, //ancho de la pantalla
                  height: MediaQuery.of(context).size.width /
                      1.6, //altura igual al ancho de la pantalla
                  color: Colors.white, //color del contenedor
                ),
                //contenedor del mismo tamaño que el contenedor anterior pero en otro color
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width / 1.6,
                  //decoración del contenedor
                  decoration: BoxDecoration(
                      color: Color(0xFF674AFF),
                      borderRadius:
                          //hacer que a la derecha tenga un redondeo de 70px
                          BorderRadius.only(bottomRight: Radius.circular(70))),
                  //imagen del contenedor
                  child: Center(
                    child: Image.asset(
                      "images/books.png",
                      scale: 0.8,
                    ),
                  ),
                ),
              ],
            ),

            //El widget Align se utiliza para alinear el tercer contenedor hijo en la parte
            // inferior central del contenedor padre.
            Align(
              //El widget hijo se alinea en la parte inferior central del contendor padre
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.888,
                //permite decorar el contenedor
                decoration: BoxDecoration(
                  color: Color(0xFF674AFF),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.888,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //nos permite redondear la parte izquierda superior del
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
