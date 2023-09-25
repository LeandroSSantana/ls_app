// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ls_app/screens/login/login_screen.dart';
import 'package:ls_app/widgets/elements/top_left_circles.dart';

class EmailSendedScreen extends StatelessWidget {
  const EmailSendedScreen({super.key});

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
                margin: EdgeInsets.fromLTRB(20, 170, 150, 40),
                child: Text(
                  'Enviado!' ' Verifique seu email e sua caixa de spam.',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Lato-Light',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                child: FaIcon(
                  FontAwesomeIcons.paperPlane,
                  size: 120,
                  color: Colors.green
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 50, 10, 50),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: CupertinoButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogInScreen(),
                            ),
                          );
                        },
                        color: Color(0xFFD0FC04),
                        borderRadius: BorderRadius.circular(50),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                        child: Text(
                          'Retornar para LogIn',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Lato-Light',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
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
