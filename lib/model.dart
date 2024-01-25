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

  const Opt({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  Question(
    text: 'what is me 1 ? ', //Q1
    options: [
      const Opt(text: '1', isCorrect: false),
      const Opt(text: 'hiii', isCorrect: false),
      const Opt(text: 'byee', isCorrect: true),
      const Opt(text: 'hiii', isCorrect: false),
    ],
  ),
  Question(
    text: 'what is me 2 ? ', //Q2
    options: [
      const Opt(text: '2', isCorrect: false),
      const Opt(text: 'hiii', isCorrect: false),
      const Opt(text: 'byee', isCorrect: true),
      const Opt(text: 'hiii', isCorrect: false),
    ],
  ),
  Question(
    text: 'what is me 3 ? ', //Q3
    options: [
      const Opt(
        text: '3',
        isCorrect: false,
      ),
      const Opt(text: 'hiii', isCorrect: false),
      const Opt(text: 'byee', isCorrect: true),
      const Opt(text: 'hiii', isCorrect: false),
    ],
  ),
  Question(
    text: 'what is me 4 ? ', //Q4
    options: [
      const Opt(text: '4', isCorrect: false),
      const Opt(text: 'hiii', isCorrect: false),
      const Opt(text: 'byee', isCorrect: true),
      const Opt(text: 'hiii', isCorrect: false),
    ],
  )
];



// class opt{
//   final String txt;


// }