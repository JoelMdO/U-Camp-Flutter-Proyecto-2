import 'package:flutter/material.dart';

//*** INFORMACION PARA CONTACTO */
Widget buildContacto(BuildContext context) {
  return Card(
      margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      //  color: Colors.transparent,
      elevation: 4,
      //  surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: DecoratedBox(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFFDEB111),
              Color(0xFFDEB111),
              Color(0xFFD9D9D9),
              Color(0xFFD9D9D9),
              Color(0xFFD9D9D9),
              Color(0xFF6484AB),
              Color(0xFF30537D),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: ListView(children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 5, left: 20),
                child: Row(children: const [
                  ImageIcon(
                    AssetImage('assets/images/Phone.png'),
                    size: 25,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    '+974-5502-1236',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ])),
            //* EMAIL */
            Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(children: const [
                  ImageIcon(
                    AssetImage('assets/images/Envelope.png'),
                    size: 25,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    'joel.montesdeoca@gmail.com',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ])),
            //** LINKEDIN*//
            Padding(
                padding: const EdgeInsets.only(left: 65),
                child: Row(children: const [
                  ImageIcon(
                    AssetImage('assets/images/LinkedIn.png'),
                    size: 25,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    'joel-montesdeoca-lopez',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ])),
            //* GITHUB */
            Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Row(children: const [
                  ImageIcon(
                    AssetImage('assets/images/GitHub.png'),
                    size: 25,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text(
                    'github.com/JoelMdO',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ])),
          ])));
}
