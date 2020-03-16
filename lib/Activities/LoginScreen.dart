import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mm_pharmacy/Helper/Constants.dart';
import 'package:mm_pharmacy/Helper/FadeAnimation.dart';
import 'package:mm_pharmacy/Helper/ScaleRoute.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'LandingScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static final GlobalKey<FormState> formKey = new GlobalKey();
  static final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController pwdController = new TextEditingController();

  FocusNode emailnode = new FocusNode();
  FocusNode pwsnode = new FocusNode();

  String token;

  final storage = FlutterSecureStorage();

  bool _obscureTextConfirm = true, isTrue = false;

  void _toggleConfirm() {
    setState(() {
      _obscureTextConfirm = !_obscureTextConfirm;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Form(
        key: formKey,
            child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.blue[900],
            Colors.blue[800],
            Colors.blue[400]
        ])),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                        1,
                        Text(
                          "Log In.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    FadeAnimation(
                        1.3,
                        Text(
                          "Welcome",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: "OpenSans"),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          FadeAnimation(
                              1.4,
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 64, 255, .3),
                                          blurRadius: 20,
                                          offset: Offset(0, 10))
                                    ]),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[200]))),
                                      child: TextFormField(
                                        controller: emailController,
                                        decoration: InputDecoration(
                                            hintText: "Sales Person ID",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                        validator: (value){
                                          if (value.isEmpty) {
                                            return "Please Enter ID";
                                          }
                                          return null;
                                        },
                                        onFieldSubmitted: (value) {
                                          FocusScope.of(context).requestFocus(pwsnode);
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[200]))),
                                      child: TextFormField(
                                        controller: pwdController,
                                        focusNode: pwsnode,
                                        obscureText: _obscureTextConfirm,
                                        decoration: InputDecoration(
                                            hintText: "Password",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none,
                                          suffixIcon: GestureDetector(
                                              onTap: () {
                                                _toggleConfirm();
                                              },
                                              child: _obscureTextConfirm
                                                  ? Icon(Icons.visibility_off, color: Colors.grey[200])
                                                  : Icon(Icons.visibility, color: Colors.blue)),),

                                        validator: (value){
                                          if (value.isEmpty) {
                                            return "Please Enter Password";
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          FadeAnimation(
                              1.5,
                              Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Colors.grey, fontFamily: "OpenSans"),
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          InkWell(
                                  onTap: () {
                                    print("Tapped");
                                    bool validate =
                                        formKey.currentState.validate();
                                    if (validate) {
                                      setState(() {
                                        isTrue = true;
                                      });
                                      onLoginPress();
                                      /*https://www.youtube.com/watch?v=2u_rNrqQaFE*/
                                    } else {
                                      print("FIELDS are empty !!!");
                                    }
                                    SystemChannels.textInput
                                        .invokeMethod('TextInput.hide');
                                  },
                                  child: FadeAnimation(
                                      1.6,
                                      Container(
                                        height: 50,
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 50),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.blue[800]),
                                        child: Center(
                                          child: Text(
                                            "Login",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0,
                                                fontFamily: "OpenSans"),
                                          ),
                                        ),
                                      )),
                                ),
                          SizedBox(height: 30.0,
                          ),

                          isTrue
                              ? CircularProgressIndicator(
                                valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.blue),
                              )
                              :Container(),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
        ),
      ),
          ),
    );
  }

  /*Scaffold(
      key: scaffoldKey,
      body: Form(
        key: formKey,
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff1b9cc6),
                      Color(0xFF1997c2),
                      Color(0xff036b9d),
                      Color(0xff016699),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Log In.',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Helvetica.ttf',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Flexible(fit: FlexFit.loose,
                          child: _buildEmailTF()),
                      SizedBox(
                        height: 30.0,
                      ),
                      Flexible(
                          fit: FlexFit.loose,child: _buildPasswordTF()),
                      _buildForgotPasswordBtn(),
                      isTrue
                          ? CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            )
                          : _buildLoginBtn(),
                      _buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );*/

  onLoginPress() async {
    /*Navigator.pushAndRemoveUntil(context, ScaleRoute(page:LandingScreen(title:"Hey")), ModalRoute.withName('/LandingScreen'));*/

    String email = emailController.text;
    String pwd = pwdController.text;
    String url = Constants.baseURL + "/salesmen/login";

    http.Response response = await http.post(url,
        body: {'id': email, 'password': pwd},
        headers: {"Accept": "application/josn"});

    print(response.body);
    if (response.statusCode == 200) {
      var responseBody = response.body;
      var jsondecode = jsonDecode(responseBody);
      if (jsondecode["state"] == "success") {
        Future.delayed(Duration(seconds: 1), () {
          emailController.clear();
          pwdController.clear();
          Navigator.pushAndRemoveUntil(
              context,
              ScaleRoute(page: LandingScreen(title: jsondecode["name"],id: email,token: "Bearer "+jsondecode["token"],)),
              ModalRoute.withName('/LandingScreen'));
        });
        await storage.write(key: "Token", value: "Bearer "+jsondecode["token"]);
        await storage.write(key: "Name", value: jsondecode["name"]);
        await storage.write(key: "ID", value: email);
      } else {
        var snackbar = SnackBar(
            content: Text(
              "Invalid username or password",
              textAlign: TextAlign.center,
            ),
            duration: Duration(milliseconds: 3000));
        scaffoldKey.currentState.showSnackBar(snackbar);
        setState(() {
          isTrue = false;
        });
      }
    } else {
      var snackbar = SnackBar(
          content: Text(
            "Something went wrong...",
            textAlign: TextAlign.center,
          ),
          duration: Duration(milliseconds: 3000));
      scaffoldKey.currentState.showSnackBar(snackbar);
      setState(() {
        isTrue = false;
      });
    }
  }
}
