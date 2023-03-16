import 'package:flutter/material.dart';
import 'package:proyect_module_2/Contacto.dart';
import 'package:proyect_module_2/Nombre-Introduccion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const MyHomePage({super.key, Key? Key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController scrollController = ScrollController();
  bool changeImage = false;

  @override
  void dispose() {
    scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //SAFE AREA
    return SafeArea(
        top: true,
        bottom: true,
        child: Scaffold(

            ///BACKGROUND CHANGE ON NAVIGATION BAR //
            bottomNavigationBar: BottomAppBar(
                color: const Color(0xFF30537D),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (changeImage == true) {
                          changeImage = false;
                        } else {
                          changeImage = true;
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.swipe,
                      size: 30,
                      color: Colors.white,
                    ))),
            body: AnimatedContainer(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: changeImage
                        ? const AssetImage('assets/images/First Background.png')
                        : const AssetImage(
                            'assets/images/Second Background.png'),
                    fit: BoxFit.cover),
              ),
              //LIST VIEW
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              child: ListView(
                  controller: scrollController,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    SizedBox(
                        width: 500,
                        height: 250,
                        //CARD WITH NAME AND ICON //
                        child: Stack(
                            alignment: AlignmentDirectional.topStart,
                            fit: StackFit.loose,
                            children: <Widget>[
                              Positioned(
                                  left: 5,
                                  top: 40,
                                  width: 300,
                                  height: 250,
                                  child: buildTitulo(context)),
                              const Positioned(
                                  left: 290,
                                  top: 150,
                                  width: 100,
                                  height: 100,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/logo.png'),
                                    backgroundColor: Colors.transparent,
                                    radius: 30,
                                  )),
                            ])),
                    //CARD WITH CONTACT DETAILS //
                    Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 380,
                          height: 210,
                          child: buildContacto(context),
                        )),
                    //QR TO GET RESUME //
                    Row(children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 120),
                      ),
                      Text('Get my full Resume >>',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 10)),
                      SizedBox(
                          height: 120,
                          width: 150,
                          child: Image(
                            image: AssetImage('assets/images/My_PDF.png'),
                          ))
                    ]),
                    //MORE PICTURE//
                    Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: SizedBox(
                            width: 50,
                            height: 45,
                            child: Stack(
                              alignment: AlignmentDirectional.topStart,
                              fit: StackFit.loose,
                              children: const <Widget>[
                                Text(
                                  'More...',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Image(
                                  image: AssetImage(
                                      'assets/images/Triangle dark 2.png'),
                                  width: 50,
                                  height: 50,
                                ),
                              ],
                            ))),
                    //LIST OF CERTIFICATES //
                    AlertDialog(
                        title: const Text(
                          'Skills:',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800,
                              fontSize: 20),
                        ),
                        content: const Text(
                          '\n- Multicultural and complex integrated collaboration. \n\n- Negotiation. \n\n- Project Management. \n\n- Agile. \n\n- Data Analyst. \n\n- Decision-making, following a balanced problem-solving structure.\n\n- Business process re-engineering. \n\n- Flight Clearances/Ground Handling specialist. \n\n- Budgeting and Planning. \n\n- Multitask and time management, setting a clear direction. \n\n- Software Development / UX design.',
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        actions: <Widget>[
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xff30537D),
                              ),
                              onPressed: () {
                                scrollController.animateTo(
                                    scrollController.position.minScrollExtent,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeOut);
                              },
                              child: const Text('Go Up',
                                  style: (TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ))))
                        ])
                  ]),
            )));
  }
}
