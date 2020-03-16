import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mm_pharmacy/Activities/LoginScreen.dart';
import 'package:mm_pharmacy/Helper/ScaleRoute.dart';

import 'LandingScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  String token,name,id;
  final storage = new FlutterSecureStorage();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getToken();
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Color(0xffaed2e9),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Expanded(
              flex: 6,
              child: Image.asset("assets/images/malu_medico_bmp.png",height: 250.0,width: 210.0,),
            ),

            Expanded(
              flex: 2,
              child: Text(
                "Malu Pharmacy",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "OpenSans",
                  fontSize: 28.0,
                  fontStyle: FontStyle.normal,
                  color: Colors.white
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: Center(
                  child: SpinKitWave(
                    size: 50.0,
                    type: SpinKitWaveType.start,
                    itemBuilder: (BuildContext context,int index){
                      return DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      );
                    },
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }

  getToken() async{

    token = await storage.read(key: "Token");
    print(token);

    if(token==null){
      print("if");
      Future.delayed(Duration(seconds: 3),(){
        Navigator.pushAndRemoveUntil(context, ScaleRoute(page:LoginScreen()), ModalRoute.withName('/LoginScreen'));
      });
    }else{
      print("else");
      name = await storage.read(key: "Name");
      id = await storage.read(key: "ID");
      Future.delayed(Duration(seconds: 3),(){
        Navigator.pushAndRemoveUntil(context, ScaleRoute(page:LandingScreen(title: name,id: id,token: token,)), ModalRoute.withName('/LandingScreen'));
      });
    }
  }
}
