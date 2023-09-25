// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ls_app/model/trainers/trainer.dart';
import 'package:ls_app/model/training/training.dart';
import 'package:ls_app/screens/training/training_screen.dart';

class CategoryScreen extends StatelessWidget {
  final String categoryName;
  final String tipoId;

  CategoryScreen({
    required this.categoryName,
    required this.tipoId,
  });

  @override
  Widget build(BuildContext context) {

    final List<Training> filteredTrainings = trainings.where((training) => training.tipoId == tipoId).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD0FC04),
        title: Text(categoryName, style: TextStyle(color: Colors.black),),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: filteredTrainings.length,
        itemBuilder: (context, index) {
          final training = filteredTrainings[index];
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
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                training.trainingImage,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
