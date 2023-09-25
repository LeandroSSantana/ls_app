// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ls_app/screens/forgot_password/email_sended/email_sended.dart';
import 'package:ls_app/screens/sign_up/sign_up_screen.dart';
import 'package:ls_app/screens/welcome/welcome_screen.dart';
import 'package:ls_app/widgets/elements/top_left_circles.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFdcdcdc),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          buildTopLeftCircles(),
          Positioned(
            top: 30,
            left: 10,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 150, 150, 10),
                child: Text(
                  'Digite um Email válido para redefinir a sua senha.',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Lato-Light',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 50, 10, 50),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: CupertinoTextField(
                        placeholder: 'Email',
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFDFD),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      child: CupertinoButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EmailSendedScreen(),
                            ),
                          );
                        },
                        color: Color(0xFFD0FC04),
                        borderRadius: BorderRadius.circular(50),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 70),
                            child: Text(
                              'Enviar Email',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lato-Light',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
