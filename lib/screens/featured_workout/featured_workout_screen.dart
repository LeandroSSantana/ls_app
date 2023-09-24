// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ls_app/model/trainers/trainer.dart';
import 'package:ls_app/model/training/training.dart';
import 'package:ls_app/widgets/elements/featured_workout.dart';

class FeaturedWorkoutScreen extends StatelessWidget {
  final List<Training> featuredTrainings;

  FeaturedWorkoutScreen({
    required this.featuredTrainings,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD0FC04),
        title: Text('Treinos em Destaque', style: TextStyle(color: Colors.black),),
      ),
      body: ListView.builder(
        itemCount: featuredTrainings.length,
        itemBuilder: (context, index) {
          final training = featuredTrainings[index];
          return FeaturedWorkout(training: training, trainers: trainers,);
        },
      ),
    );
  }
}
