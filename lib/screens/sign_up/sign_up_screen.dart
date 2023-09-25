// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ls_app/screens/login/login_screen.dart';
import 'package:ls_app/widgets/elements/top_left_circles.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFdcdcdc),
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
          Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Text(
                      'Cadastre-se',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Lato-Light',
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(10, 100, 10, 10),
                    width:350,
                    child: Column(
                      children: [
                        CupertinoTextField(
                          placeholder: 'Nome Completo',
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFDFD),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(height: 10),
                        CupertinoTextField(
                          placeholder: 'Email',
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFDFD),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(height: 10),
                        CupertinoTextField(
                          placeholder: 'Senha',
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFDFD),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(height: 10),
                        CupertinoTextField(
                          placeholder: 'Confirme Senha',
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFDFD),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  CupertinoButton(
                    onPressed: () {
                      // Lógica para realizar o cadastro
                    },
                    color: Color(0xFFD0FC04),
                    borderRadius: BorderRadius.circular(40),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 70),
                      child: Text(
                        'Cadastrar',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lato-Light',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInScreen()));
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Já tem uma conta? Faça login',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontFamily: 'Lato',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
