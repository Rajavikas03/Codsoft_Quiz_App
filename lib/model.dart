class Question {
  final String text;
  final List<Opt> options;

  Question({
    required this.text,
    required this.options,
  });
}

class Opt {
  final String text;
  final bool isCorrect;
  bool isLocked;

  Opt({
    required this.text,
    required this.isCorrect,
    required this.isLocked,
  });
}

final questions = [
  Question(
    text: 'what is me 1 ? ', //Q1
    options: [
      Opt(text: '1', isCorrect: false, isLocked: false),
      Opt(text: '2', isCorrect: false, isLocked: false),
      Opt(text: '3', isCorrect: true, isLocked: false),
      Opt(text: '4', isCorrect: false, isLocked: false),
    ],
  ),
  Question(
    text: 'what is me 2 ? ', //Q2
    options: [
      Opt(text: '5', isCorrect: false, isLocked: false),
      Opt(text: '6', isCorrect: false, isLocked: false),
      Opt(text: '7', isCorrect: true, isLocked: false),
      Opt(text: '8', isCorrect: false, isLocked: false),
    ],
  ),
  Question(
    text: 'what is me 3 ? ', //Q3
    options: [
      Opt(text: '9', isCorrect: false, isLocked: false),
      Opt(text: '10', isCorrect: false, isLocked: false),
      Opt(text: '11', isCorrect: true, isLocked: false),
      Opt(text: '12', isCorrect: false, isLocked: false),
    ],
  ),
  Question(
    text: 'what is me 4 ? ', //Q4
    options: [
      Opt(text: '13', isCorrect: false, isLocked: false),
      Opt(text: '14', isCorrect: false, isLocked: false),
      Opt(text: '15', isCorrect: true, isLocked: false),
      Opt(text: '16', isCorrect: false, isLocked: false),
    ],
  )
];
