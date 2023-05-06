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
                //relleno en la parte superior de 40px y 38px en la parte inferior
                //
                padding: EdgeInsets.only(top: 40, bottom: 38),
                decoration: BoxDecoration(
                  color: Colors.white,
                  //nos permite redondear la parte izquierda superior del
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),

                //agregar un titulo en el container inferior
                child: Column(
                  children: [
                    Text(
                      "Aprender lo es todo",
                      style: TextStyle(
                        //estilo del texto
                        fontSize: 25, //tamaño del texto
                        fontWeight: FontWeight.w600, //anchura del texto
                        letterSpacing: 1, //espacio de las letras
                        wordSpacing: 2, //espacio entre palabras
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      //widget tendrá un relleno de 40 píxeles lógicos en los lados izquierdo y derecho
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        //AGREGAR UN SUBTITULO CON UNA FRASE
                        "Aprender con placer con Dear Programer, dondequiera que estés",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            color:
                                Colors.black.withOpacity(0.6) //color y opacidad
                            ),
                      ),
                    ),
                    SizedBox(height: 60),
                    //crear boton
                    Material(
                      color: Color(0xFF674AFF),
                      borderRadius:
                          BorderRadius.circular(10), //hacer el boron circular
                      child: InkWell(
                        //widget para darle animación al boton
                        onTap:
                            () {}, //es la función que realiza el boton al darle click
                        //se crea el boton
                        child: Container(
                          //relleno de 15px inferior, superior y 80px en la izquierda y derecha
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 80),
                          child: Text(
                            "Empezar",
                            //cambiarle el color y tamaño del texto del boton
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
