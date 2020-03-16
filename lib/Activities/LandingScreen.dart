import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mm_pharmacy/Helper/Constants.dart';
import 'package:mm_pharmacy/Helper/FadeAnimation.dart';
import 'package:mm_pharmacy/Responses/GetClients.dart';

class LandingScreen extends StatefulWidget {
  final String title, id,token;

  const LandingScreen({this.title, this.id, this.token});

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  Map data;
  List dataList;
  String token;
  final storage = new FlutterSecureStorage();
  Factory factory;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getClientData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [Colors.blue[900], Colors.blue[800], Colors.blue[400]]),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color(0x00000000),
            elevation: 0.0,
            title: FadeAnimation(
              1.4,
              Text(
                "Hey " + widget.title,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "OpenSans",
                    fontStyle: FontStyle.normal,
                    color: Colors.white),
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                    child: Image.asset(
                      "assets/images/malu_medico_bmp.png",
                      height: 220.0,
                      width: 170.0,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Assign Party",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "OpenSans",
                        fontStyle: FontStyle.normal,
                        color: Colors.blue[900]),
                  ),
                  onTap: () {},
                ),
                ListTile(),
              ],
            ),
          ),
          body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[],
            ),
          )),
    );
  }

  /*Center(
        child: Text(
          "Landing",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "OpenSans",
              fontSize: 28.0,
              fontStyle: FontStyle.normal,
              color: Colors.blue
          ),
        ),
      ),*/

  getClientData() async {
    token = await storage.read(key: "Token");
    var response = await http.post(
        Uri.encodeFull(
            Constants.baseURL + "salesmen/get_salesman_details_with_clients"),
        body: {
          'id': widget.id,
        },
        headers: {
          "Accept": "application/josn",
          "Authorization": widget.token
        });
    print(widget.id);
    data = json.decode(response.body);
    print(data.toString());
    if(response.statusCode==200){
      if(data["state"] == "success"){

      }
    }
    /*setState(() {
      if (data["state"] == "success") {
        dataList = data["data"];
      } else {
        print("Something went wrong...");
      }
    });*/
    //print(dataList.toString());
    return "Success!";
  }
}
