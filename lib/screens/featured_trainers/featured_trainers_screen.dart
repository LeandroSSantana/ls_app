import 'package:flutter/material.dart';
import 'package:ls_app/model/trainers/trainer.dart';
import 'package:ls_app/screens/trainer/trainer_profile_screen.dart';

class FeaturedTrainersScreen extends StatelessWidget {
  final List<Trainer> trainers;

  FeaturedTrainersScreen({
    required this.trainers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Treinadores em Destaque", style: TextStyle(color: Colors.black),),
        backgroundColor: Color(0xFFD0FC04),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < trainers.length; i += 2)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildTrainerImage(trainers[i], context),
                  if (i + 1 < trainers.length) buildTrainerImage(trainers[i + 1], context),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget buildTrainerImage(Trainer trainer, BuildContext context) {
    return GestureDetector(
      onTap: () {
        handleTrainerTap(context, trainer);
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
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
    );
  }

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
}
