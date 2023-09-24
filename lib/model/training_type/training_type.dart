class TrainingType {
  final String id;
  final String name; // Nome do tipo de treinamento

  TrainingType({
    required this.id,
    required this.name,
  });
}


final List<TrainingType> trainingTypes = [
  TrainingType(id: 'musculacao', name: 'Musculação'),
  TrainingType(id: 'corrida', name: 'Corrida'),
  TrainingType(id: 'natacao', name: 'Natação'),
  TrainingType(id: 'ciclismo', name: 'Ciclismo'),
  TrainingType(id: 'funcional', name: 'Funcional'),
  TrainingType(id: 'crossfit', name: 'Crossfit'),
  TrainingType(id: 'yoga', name: 'Yoga'),
  // Adicione mais tipos de treino conforme necessário
];
