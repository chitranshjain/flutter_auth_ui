import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterauthui/SignUpPage.dart';
import 'package:flutterauthui/bloc/LoginScreenBloc.dart';
import 'package:flutterauthui/bloc/events/LoginScreenBlocEvents.dart';
import 'package:flutterauthui/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  final _bloc = LoginScreenBloc();

  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: StreamBuilder(
          stream: _bloc.status,
          initialData: 'invalid',
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            return Container(
              width: double.infinity,
              height: size.height,
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
                    right: 0,
                    child: Image.asset(
                      'assets/images/login_bottom.png',
                      width: size.width * 0.40,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'LOGIN',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          textStyle:
                              TextStyle(letterSpacing: 3, fontSize: 25.0),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.06,
                      ),
                      SvgPicture.asset(
                        'assets/icons/login.svg',
                        height: size.height * 0.3,
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                        width: size.width * 0.8,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(
                          color: kPrimaryLightColor,
                          borderRadius: BorderRadius.circular(33),
                        ),
                        child: TextField(
                          controller: emailController,
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
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(
                          color: kPrimaryLightColor,
                          borderRadius: BorderRadius.circular(33),
                        ),
                        child: TextField(
                          controller: passwordController,
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
                            onPressed: () {
                              print(emailController.text);
                              _bloc.loginEventSink.add(FormSubmittedEvent(
                                  email: emailController.text,
                                  password: passwordController.text));

                              if (snapshot.data == 'valid') {
                                showCupertinoDialog(
                                    context: context,
                                    builder: (context) {
                                      return CupertinoAlertDialog(
                                        title: Text(
                                          'Form Submitted',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        actions: <Widget>[
                                          CupertinoDialogAction(
                                            child: Text(
                                              'Yay!',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          )
                                        ],
                                      );
                                    });
                              } else {
                                showCupertinoDialog(
                                    context: context,
                                    builder: (context) {
                                      return CupertinoAlertDialog(
                                        title: Text(
                                          'Form Submission failed',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        actions: <Widget>[
                                          CupertinoDialogAction(
                                            child: Text(
                                              'Nay!',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          )
                                        ],
                                      );
                                    });
                              }
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
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Don\'t have an Account?',
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
                                    builder: (context) => SignUpPage()),
                              );
                            },
                            child: Text(
                              'Sign Up',
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
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
