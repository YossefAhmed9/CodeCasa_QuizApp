class Model {
  String question;
  List<String> answer;
  int answerIndex;

  Model(this.question, this.answer, this.answerIndex);
}

List<Model> questions = [
  Model('What is the capital of Palestine?',
      ['Gaza', 'Molde', 'Borussia', 'Munich'], 0),
  Model('What is the capital of Australia?',
      ['Sydney', 'Canberra', 'Melbourne', 'Perth'], 1),
  Model('What is the capital of Japan?',
      ['Tokyo', 'Beijing', 'Seoul', 'Bangkok'], 0),
  Model('What is the capital of Brazil?',
      ['Rio de Janeiro', 'São Paulo', 'Brasília', 'Salvador'], 2),
  Model('What is the capital of Canada?',
      ['Vancouver', 'Toronto', 'Montreal', 'Ottawa'], 3),
  Model('What is the capital of South Africa?',
      ['Johannesburg', 'Cape Town', 'Durban', 'Pretoria'], 3),
  Model('What is the capital of Russia?',
      ['Moscow', 'Saint Petersburg', 'Sochi', 'Kazan'], 0),
  Model('What is the capital of Argentina?',
      ['Buenos Aires', 'Santiago', 'Montevideo', 'Lima'], 0),
  Model('What is the capital of Egypt?',
      ['Cairo', 'Alexandria', 'Luxor', 'Giza'], 0),
  Model('What is the capital of Saudi Arabia?',
      ['Riyadh', 'Jeddah', 'Mecca', 'Medina'], 0)
];
