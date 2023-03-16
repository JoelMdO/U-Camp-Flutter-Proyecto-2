import 'package:flutter/material.dart';

// TITULO Y PRESENTACION //
Widget buildTitulo(BuildContext context) {
  return Column(children: <Widget>[
    const FittedBox(
        // ADJUST THE SIZE AS PER SPACE OF THE ROW //
        fit: BoxFit.fitWidth,
        child: Padding(
            padding: EdgeInsets.only(top: 40, left: 50),
            child: Text(
              'Joel Montes de Oca Lopez',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w800,
                  fontSize: 70),
            ))),
    FittedBox(
        fit: BoxFit.fitWidth,
        child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 90),
            child: SizedBox(
                width: 750,
                height: 300,
                child: RichText(
                    text: const TextSpan(
                        text: 'Passionate',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 30),
                        children: <TextSpan>[
                      TextSpan(
                          text:
                              '\nProactive, creative, and ethical personality. \nMeet and exceed expectations day-by-day goals. \nInclination to learn new skills, methodologies. \nProfessional philosophy: '),
                      TextSpan(
                          text: '\n    DeOPS (Deliver Efficient Operations)',
                          style: TextStyle(fontWeight: FontWeight.w800)),
                    ])))))
  ]);
}
