import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CardWidget extends StatefulWidget {
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator CardWidget - GROUP

    return Container(
        width: 185,
        height: 243,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 185,
                      height: 243,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      )
                  )
              ), Positioned(
                  top: 0,
                  left: 0,
                  child: //Mask holder Template
                  Container(
                      width: 185,
                      height: 163,
                      child: null
                  )
              ), Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                      width: 34,
                      height: 34,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 34,
                                    height: 34,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ), Positioned(
                                top: 10,
                                left: 9,
                                child: SvgPicture.asset(
                                    'assets/images/icon.svg',
                                    semanticsLabel: 'icon'
                                ),
                            ),
                          ]
                      )
                  )
              ), Positioned(
                  top: 175,
                  left: 14,
                  child: Container(
                      width: 158,
                      height: 54,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Stack(
                          children: <Widget>[
                            const Positioned(
                                top: 0,
                                left: 0,
                                child: Text(
                                  'Stylish Chair', textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(73, 68, 66, 1),
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),)
                            ),
                            const Positioned(
                                top: 26,
                                left: 0,
                                child: Text('\$170', textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(154, 147, 144, 1),
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),)
                            ), Positioned(
                                top: 32,
                                left: 114,
                                child: Container(
                                    width: 44,
                                    height: 17,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 1,
                                              left: 0,
                                              child: SvgPicture.asset(
                                                  'assets/images/icon.svg',
                                                  semanticsLabel: 'icon'
                                              ),
                                          ),
                                          Positioned(
                                              top: 0,
                                              left: 23,
                                              child: Text('4.8',
                                                textAlign: TextAlign.left,
                                                style: const TextStyle(
                                                    color: Color.fromRGBO(
                                                        187, 187, 187, 1),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    letterSpacing: 1,
                                                    fontWeight: FontWeight
                                                        .normal,
                                                    height: 1
                                                ),)
                                          ),
                                        ]
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),
            ]
        )
    );
  }
}

