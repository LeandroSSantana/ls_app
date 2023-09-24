// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ls_app/model/trainers/trainer.dart';
import 'package:ls_app/model/training/training.dart';
import 'package:ls_app/screens/training/training_screen.dart';

class FeaturedWorkout extends StatelessWidget {
  final Training training;
  final List<Trainer> trainers;

  FeaturedWorkout({
    required this.training,
    required this.trainers,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TrainingScreen(
                training: training,
                trainers: trainers,
            ),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Color(0xFFD0FC04)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: [
              // Imagem do treino
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    training.trainingImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 18.0,
                  ),
                ),
              ),

              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 18.0,
                      ),
                      SizedBox(width: 2),
                      Text(
                        '${training.rating.toStringAsFixed(1)}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      training.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'Tipo: ${training.tipoId.toString()}',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}









