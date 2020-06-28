import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterauthui/LoginPage.dart';
import 'package:flutterauthui/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This will provide us the height and width of the device on which the app will run.
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/main_top.png',
                  width: size.width * 0.3,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/main_bottom.png',
                  width: size.width * 0.2,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'WELCOME',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      textStyle: TextStyle(letterSpacing: 3, fontSize: 25.0),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  SvgPicture.asset(
                    'assets/icons/chat.svg',
                    height: size.height * 0.4,
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(33),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 40.0),
                        color: kPrimaryColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          'LOGIN',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            textStyle: TextStyle(
                                fontSize: 20.0,
                                letterSpacing: 5.0,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    width: size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(33),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 40.0),
                        color: kPrimaryLightColor,
                        onPressed: () {},
                        child: Text(
                          'SIGN UP',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            textStyle: TextStyle(
                                fontSize: 20.0,
                                letterSpacing: 5.0,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
