import 'package:flutter/material.dart';

class Trainer {
  final String id;
  final String trainerName;
  final String trainerImage;
  final String trainerInfo;
  final String instagramUsername;

  Trainer({
    required this.id,
    required this.trainerName,
    required this.trainerImage,
    required this.trainerInfo,
    required this.instagramUsername
  });
}

final List<Trainer> trainers = [
  Trainer(
    id:'1',
    trainerName: 'Leandro Santana',
    trainerImage: 'assets/eu.png',
    trainerInfo: 'O Leandro é um cara que esta fazendo o melhor possível para dar certo.',
    instagramUsername: 'leandro_santana',
  ),
  Trainer(
    id:'2',
    trainerName: 'Terry Crews',
    trainerImage: 'assets/tc.png',
    trainerInfo: 'O Terry é a combinação perfeita de músculos e risadas. Com seus bíceps do tamanho de melancias e seu sorriso contagiante, ele faria você levantar pesos e gargalhar ao mesmo tempo. Não seria apenas um treino, seria uma festa de fitness com explosões de alegria! 💪😄',
    instagramUsername: 'terrycrews'
  ),
  Trainer(
    id:'3',
    trainerName: 'Arnold Schwarzenegger',
    trainerImage: 'assets/arnd.png',
    trainerInfo: 'Arnold é como o "Vingador do Futuro" do fitness. Com seus músculos de proporções épicas e a determinação de um herói de ação, ele transformaria cada sessão de treino em uma aventura. Você suaria tanto que até o planeta Marte ficaria com inveja! 💪🚀😄',
    instagramUsername: 'schwarzenegger'
  ),
  Trainer(
    id:'4',
    trainerName: 'Sylvester Stallone',
    trainerImage: 'assets/sly.png',
    trainerInfo: 'Stallone é definitivamente o o Rocky Balboa das academias. Com seu estilo durão e determinação inabalável, ele faria você treinar como um verdadeiro campeão. Cada repetição seria um round na luta contra a preguiça, e você se sentiria pronto para enfrentar qualquer desafio, até mesmo subir os degraus do Museu de Arte da Filadélfia! 💪🥊😄',
    instagramUsername: 'officialslystallone'
  ),
  Trainer(
    id:'5',
    trainerName: 'Sérgio Sacani',
    trainerImage: 'assets/scn.png',
    trainerInfo: 'Sérgio Sacani, AKA "Gordão dos Foguetes" do Space Today. Ele transformará seus exercícios em uma jornada espacial, com piadas intergalácticas e um treinamento que te deixaria pronto para decolar. Prepare-se para uma viagem cósmica de malhação! 🚀💪😄',
    instagramUsername:'spacetoday'
  ),
];