import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 384,
          height: 512,
          decoration: BoxDecoration(
              color: const Color(0xffffffff)
          ),
          child: Stack(children: [
            // Rectangle 1
            PositionedDirectional(
              top: 0,
              start: 0,
              child:
              Container(
                  width: 384,
                  height: 90,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      ),
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [const Color(0xff5f83f9), const Color(0xff30427d)])
                  )
              ),
            ),
            // Kitchen Care
            PositionedDirectional(
              top: 16,
              start: 75,
              child:
              SizedBox(
                  width: 76,
                  height: 14.5,
                  child:   Text(
                      "Kitchen Care",
                      style: const TextStyle(
                          color:  const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "OpenSans",
                          fontStyle:  FontStyle.normal,
                          fontSize: 12.0
                      ),
                      textAlign: TextAlign.left
                  )
              ),
            ),
            // Rectangle 2
            PositionedDirectional(
              top: 68,
              start: 0,
              child:
              Container(
                  width: 384,
                  height: 478,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      ),
                      color: const Color(0xffffffff)
                  )
              ),
            ),
            // Rectangle 3
            PositionedDirectional(
              top: 103,
              start: 31,
              child:
              Container(
                  width: 266,
                  height: 20.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)
                      ),
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      ),
                      color: const Color(0xffebebeb)
                  )
              ),
            ),
            // Search Customer Name eg. Nishad…
            PositionedDirectional(
              top: 110,
              start: 54,
              child:
              SizedBox(
                  width: 199,
                  height: 13,
                  child:   Text(
                      "Search Customer Name eg. Nishad…",
                      style: const TextStyle(
                          color:  const Color(0xff888686),
                          fontWeight: FontWeight.w400,
                          fontFamily: "OpenSans",
                          fontStyle:  FontStyle.normal,
                          fontSize: 11.0
                      ),
                      textAlign: TextAlign.left
                  )
              ),
            ),
            // Rectangle 4
            PositionedDirectional(
              top: 102,
              start: 571,
              child:
              Container(
                  width: 85,
                  height: 22,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)
                      ),
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      ),
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [const Color(0xff5f83f9), const Color(0xff30427d)])
                  )
              ),
            ),
            // Search
            PositionedDirectional(
              top: 110,
              start: 619,
              child:
              SizedBox(
                  width: 37.5,
                  height: 13,
                  child:   Text(
                      "Search",
                      style: const TextStyle(
                          color:  const Color(0xffffffff),
                          fontWeight: FontWeight.w400,
                          fontFamily: "OpenSans",
                          fontStyle:  FontStyle.normal,
                          fontSize: 11.0
                      ),
                      textAlign: TextAlign.left
                  )
              ),
            ),
            // Union 1
            PositionedDirectional(
              top: 19,
              start: 11,
              child:
              Container(
                  width: 17.500049591064453,
                  height: 11.499950408935547,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      ),
                      color: const Color(0xffffffff)
                  )
              ),
            ),
            // Rectangle 8
            PositionedDirectional(
              top: 199,
              start: 31,
              child:
              Container(
                  width: 355,
                  height: 19,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      ),
                      color: const Color(0xffffffff)
                  )
              ),
            ),
            // Sr.No.
            PositionedDirectional(
              top: 204,
              start: 44,
              child:
              SizedBox(
                  width: 27.5,
                  height: 11.5,
                  child:   Text(
                      "Sr.No.",
                      style: const TextStyle(
                          color:  const Color(0xff807f7f),
                          fontWeight: FontWeight.w400,
                          fontFamily: "OpenSans",
                          fontStyle:  FontStyle.normal,
                          fontSize: 10.0
                      ),
                      textAlign: TextAlign.left
                  )
              ),
            ),
            // Customer Name
            PositionedDirectional(
              top: 204,
              start: 236,
              child:
              SizedBox(
                  width: 80,
                  height: 11.5,
                  child:   Text(
                      "Customer Name",
                      style: const TextStyle(
                          color:  const Color(0xff807f7f),
                          fontWeight: FontWeight.w400,
                          fontFamily: "OpenSans",
                          fontStyle:  FontStyle.normal,
                          fontSize: 10.0
                      ),
                      textAlign: TextAlign.left
                  )
              ),
            ),
            // Bill
            PositionedDirectional(
              top: 204,
              start: 674,
              child:
              SizedBox(
                  width: 11.5,
                  height: 11.5,
                  child:   Text(
                      "Bill",
                      style: const TextStyle(
                          color:  const Color(0xff807f7f),
                          fontWeight: FontWeight.w400,
                          fontFamily: "OpenSans",
                          fontStyle:  FontStyle.normal,
                          fontSize: 10.0
                      ),
                      textAlign: TextAlign.left
                  )
              ),
            ),
            // Quotation
            PositionedDirectional(
              top: 204,
              start: 530,
              child:
              SizedBox(
                  width: 49.5,
                  height: 11.5,
                  child:   Text(
                      "Quotation",
                      style: const TextStyle(
                          color:  const Color(0xff807f7f),
                          fontWeight: FontWeight.w400,
                          fontFamily: "OpenSans",
                          fontStyle:  FontStyle.normal,
                          fontSize: 10.0
                      ),
                      textAlign: TextAlign.left
                  )
              ),
            ),
            // Line 1
            PositionedDirectional(
              top: 199.5,
              start: 111.5,
              child:
              Container(
                  width: 0,
                  height: 359,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      )
                  )
              ),
            ),
            // Line 2
            PositionedDirectional(
              top: 199.5,
              start: 521.5,
              child:
              Container(
                  width: 0,
                  height: 359,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      )
                  )
              ),
            ),
            // Line 3
            PositionedDirectional(
              top: 199.5,
              start: 641.5,
              child:
              Container(
                  width: 0,
                  height: 359,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      )
                  )
              ),
            ),
            // Line 4
            PositionedDirectional(
              top: 199.5,
              start: 31.5,
              child:
              Container(
                  width: 0,
                  height: 359,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      )
                  )
              ),
            ),
            // Line 5
            PositionedDirectional(
              top: 199.5,
              start: 741.5,
              child:
              Container(
                  width: 0,
                  height: 359,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      )
                  )
              ),
            ),
            // Line 6
            PositionedDirectional(
              top: 917.5,
              start: 31.5,
              child:
              Container(
                  width: 355,
                  height: 0,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      )
                  )
              ),
            ),
            // Line 7
            PositionedDirectional(
              top: 199.5,
              start: 199.5,
              child:
              Container(
                  width: 0,
                  height: 359,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      )
                  )
              ),
            ),
            // Date
            PositionedDirectional(
              top: 204,
              start: 126,
              child:
              SizedBox(
                  width: 24,
                  height: 11.5,
                  child:   Text(
                      "Date",
                      style: const TextStyle(
                          color:  const Color(0xff807f7f),
                          fontWeight: FontWeight.w400,
                          fontFamily: "OpenSans",
                          fontStyle:  FontStyle.normal,
                          fontSize: 10.0
                      ),
                      textAlign: TextAlign.left
                  )
              ),
            ),
            // Ellipse 1
            PositionedDirectional(
              top: 939,
              start: 666,
              child:
              Container(
                  width: 30.5,
                  height: 30.5,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      ),
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [const Color(0xff5f83f9), const Color(0xff30427d)])
                  )
              ),
            ),
            // Union 2
            PositionedDirectional(
              top: 953,
              start: 681,
              child:
              Container(
                  width: 15,
                  height: 14.5,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff707070),
                          width: 1
                      ),
                      color: const Color(0xffffffff)
                  )
              ),
            )
          ])
      ),
    );
  }
}
