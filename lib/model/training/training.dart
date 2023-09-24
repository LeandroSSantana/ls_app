import 'package:flutter/material.dart';
import 'package:ls_app/model/training_type/training_type.dart';

class Training {
  final String trainingImage;
  final String name;
  final String description;
  final double rating;
  final String tipoId;
  final String trainerId;

  Training({
    required this.trainingImage,
    required this.name,
    required this.description,
    required this.rating,
    required this.tipoId,
    required this.trainerId,
  });
}

final List<Training> trainings = [
  Training(
    trainingImage: 'assets/wm.png',
    name: 'Treino Insano',
    description:
        'O Treino Insano é um treino de alta intensidade projetado para desafiar seus limites. '
        'Ele combina exercícios de musculação e cardio para maximizar a queima de calorias e o ganho de força. '
        'Prepare-se para suar e sentir a queima!',
    rating: 9.3,
    tipoId: 'musculacao',
    trainerId: '5',
  ),
  Training(
    trainingImage: 'assets/cf.png',
    name: 'Seca Geral',
    description:
        'O Treino Seca Geral é um programa de emagrecimento completo que visa a perda de peso rápida e eficaz. '
        'Com uma combinação de exercícios aeróbicos e treinamento de resistência, este treino é ideal para quem deseja '
        'perder gordura e definir o corpo.',
    rating: 8.2,
    tipoId: 'crossfit',
    trainerId: '2',
  ),
  Training(
    trainingImage: 'assets/yg.png',
    name: 'Mente Equilibrada',
    description:
        'O Treino Mente Equilibrada é uma prática de Yoga focada em relaxamento e bem-estar. '
        'Com uma série de posturas e técnicas de respiração, você aprenderá a acalmar a mente e aliviar o estresse. '
        'Prepare-se para se sentir revigorado e equilibrado!',
    rating: 6.7,
    tipoId: 'yoga',
    trainerId: '4',
  ),

  Training(
    trainingImage: 'assets/fast.png',
    name: 'Veloz e Furioso',
    description:
        'Desafie seus limites com o Treino de Corrida Insano! Corra em terrenos extremos, supere obstáculos e alcance um condicionamento físico inigualável.'
        'Com sprints explosivos, subidas íngremes e intervalos intensos, você conquistará um novo patamar de resistência.'
        'Prepare-se para uma jornada épica de superação!',
    rating: 4.7,
    tipoId: 'corrida',
    trainerId: '1',
  ),
  Training(
    trainingImage: 'assets/swm.png',
    name: 'NadandoTranquilo',
    description:
        'Desfrute da serenidade da Natação Suave. Este programa é perfeito para relaxar, tonificar o corpo e melhorar a postura.'
        ' Nade suavemente em águas calmas, fortaleça músculos e desfrute de momentos de tranquilidade na piscina.'
        'Uma experiência revigorante para mente e corpo',
    rating: 2.2,
    tipoId: 'natacao',
    trainerId: '3',
  ),
  Training(
    trainingImage: 'assets/bkn.png',
    name: 'Pedal Hard',
    description:
        'Este treino é feito para os ciclistas mais audaciosos em busca de superar seus limites. '
        'Pedale através de intensos percursos montanhosos, sprints furiosos e resistência implacável. '
        'A aula é uma explosão de energia que transformará seu condicionamento e deixará você pronto para qualquer estrada.'
        ' Prepare-se para suar e conquistar a vitória sobre duas rodas!',
    rating: 7.5,
    tipoId: 'ciclismo',
    trainerId: '2',
  ),
  Training(
    trainingImage: 'assets/fnc.png',
    name: 'Funcional Funciona',
    description:
        'Eleve seu condicionamento com nossa Aula de Funcional Intermediária. '
        'Um mix dinâmico de exercícios de força, resistência e flexibilidade que'
        'o levará ao próximo nível de condicionamento físico.',
    rating: 5.0,
    tipoId: 'funcional',
    trainerId: '5',
  ),
  // Adicione mais treinos aqui, se necessário
];
