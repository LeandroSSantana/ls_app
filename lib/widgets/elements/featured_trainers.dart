// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ls_app/model/trainers/trainer.dart';
import 'package:ls_app/screens/featured_trainers/featured_trainers_screen.dart';
import 'package:ls_app/screens/trainer/trainer_profile_screen.dart';

class FeaturedTrainers extends StatelessWidget {
  final List<Trainer> trainers;

  FeaturedTrainers({
    required this.trainers,
  });

  void handleTrainerTap(BuildContext context, Trainer trainer) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TrainerProfileScreen(
          trainer: trainer,
        ),
      ),
    );
  }

  Widget buildTrainer(Trainer trainer, BuildContext context) {
    final nameParts = trainer.trainerName.split(' ');

    return GestureDetector(
      onTap: () {
        handleTrainerTap(context, trainer);
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              image: DecorationImage(
                image: AssetImage(trainer.trainerImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: nameParts[0],
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato_light',
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: '\n${nameParts.sublist(1).join(" ")}',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato_light',
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Limitar a exibição a apenas 4 treinadores
    final trainersToDisplay = trainers.take(4).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // Exibir os 4 treinadores
          for (var trainer in trainersToDisplay) buildTrainer(trainer, context),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FeaturedTrainersScreen(trainers: trainers),
                ),
              );
            },
            child: Text(
              'Mais',
              style: TextStyle(
                color: Color(0xFFD0FC04),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
