import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterauthui/LoginPage.dart';
import 'package:flutterauthui/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/signup_top.png',
                  width: size.width * 0.35,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/main_bottom.png',
                  width: size.width * 0.25,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'SIGN UP',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      textStyle: TextStyle(letterSpacing: 3, fontSize: 25.0),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  SvgPicture.asset(
                    'assets/icons/signup.svg',
                    height: size.height * 0.3,
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                    width: size.width * 0.8,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.circular(33),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: kPrimaryColor,
                          ),
                          hintText: 'Your email',
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                    width: size.width * 0.8,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.circular(33),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock_open,
                          color: kPrimaryColor,
                        ),
                        hintText: 'Password',
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: kPrimaryColor,
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    width: size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(33),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 40.0),
                        color: kPrimaryColor,
                        onPressed: () {},
                        child: Text(
                          'SIGN UP',
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
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already have an Account?',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: kPrimaryColor,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.015,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                                fontSize: 15),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    width: size.width * 0.75,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            color: Color(0xFFD9D9D9),
                            height: 1.5,
                          ),
                        ),
                        Text(
                          'OR',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xFFD9D9D9),
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: kPrimaryLightColor, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/facebook.svg',
                            color: kPrimaryColor,
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: kPrimaryLightColor, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/google-plus.svg',
                            color: kPrimaryColor,
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: kPrimaryLightColor, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/twitter.svg',
                            color: kPrimaryColor,
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
