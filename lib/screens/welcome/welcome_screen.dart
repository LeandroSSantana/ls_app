// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ls_app/model/trainers/trainer.dart';
import 'package:ls_app/model/training/training.dart';
import 'package:ls_app/widgets/elements/category_icon.dart';
import 'package:ls_app/widgets/elements/featured_trainers.dart';
import 'package:ls_app/widgets/elements/featured_workout.dart';
import 'package:ls_app/widgets/elements/top_left_circles.dart';

import '../../model/training_type/training_type.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 10,
              child: buildTopLeftCircles(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(100, 100, 30, 15),
                  child: Text(
                    'Olá, que bom te ver por aqui!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Lato_light',
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  child: Image.asset(
                    'assets/banner.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30,0, 0, 15),
                  child: Text(
                    'Categorias',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Lato_light',
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategoryIcon(context,'musculação', FontAwesomeIcons.dumbbell,trainingTypes[0]),
                      buildCategoryIcon(context,'Corrida', FontAwesomeIcons.running,trainingTypes[1]),
                      buildCategoryIcon(context,'Natação', FontAwesomeIcons.swimmer,trainingTypes[2]),
                      buildCategoryIcon(context,'Ciclismo', FontAwesomeIcons.biking,trainingTypes[3]),
                      buildCategoryIcon(context,'Funcional', FontAwesomeIcons.heartbeat,trainingTypes[4]),
                      buildCategoryIcon(context,'Crossfit', FontAwesomeIcons.weightHanging,trainingTypes[5]),
                      buildCategoryIcon(context,'Yoga', FontAwesomeIcons.spa,trainingTypes[6]),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 0, 10),
                  child: Text(
                    'Treinos em Destaque',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Lato_light',
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (Training training in trainings)
                        FeaturedWorkout(
                          training: training, trainers: trainers,
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 0, 10),
                  child: Text(
                    'Treinadores em Destaque',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Lato_light',
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                FeaturedTrainers(trainers: trainers),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
