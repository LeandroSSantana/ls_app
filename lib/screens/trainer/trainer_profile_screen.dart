// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ls_app/model/trainers/trainer.dart';

class TrainerProfileScreen extends StatelessWidget {
  final Trainer trainer;

  TrainerProfileScreen({
    required this.trainer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD0FC04),
        title: Text(
          trainer.trainerName,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(trainer.trainerImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trainer.trainerName,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    trainer.trainerInfo,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.instagram,
                      color: Color(0xFFE1306C),
                    ),
                    onPressed: () {
                      // Adicione a ação para o Instagram aqui
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Color(0xFF25D366),
                    ),
                    onPressed: () {
                      // Adicione a ação para o WhatsApp aqui
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
