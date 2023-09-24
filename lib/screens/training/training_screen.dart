// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ls_app/model/trainers/trainer.dart';
import 'package:ls_app/model/training/training.dart';

class TrainingScreen extends StatelessWidget {
  final Training training;
  final List<Trainer> trainers;

  TrainingScreen({
    required this.training,
    required this.trainers,
  });

  @override
  Widget build(BuildContext context) {
    // Encontre o treinador correspondente usando o ID do treinador do treinamento atual
    final trainer = trainers.firstWhere(
          (t) => t.id == training.trainerId,
      orElse: () => Trainer(
        id: 'default',
        trainerName: 'Treinador Não Encontrado',
        trainerImage: 'imagem_padrao.png',
        trainerInfo: '',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD0FC04),
        title: Text(
          training.name,
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
                      image: AssetImage(training.trainingImage),
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
                    training.description,
                    style: TextStyle(
                      fontFamily: 'Lato-Light',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                      ),
                      Text(
                        '${training.rating.toStringAsFixed(1)}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        ' (Classificação do Treino)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Treinador
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aula ministrada por:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(trainer.trainerImage),
                  ),
                  SizedBox(height: 8),
                  Text(trainer.trainerName),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
