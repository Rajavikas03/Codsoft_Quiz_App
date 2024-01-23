class Question {
  final String text;
  // final List<Option> options;
  bool islocked;
  // Option? selectedOption;

  Question({
    required this.text,
    // required this.options,
    this.islocked = false,
    // this.selectedOption,
  });
}

// class Option {
//   final String text;
//   final bool isCorrect;

//   const Option({
//     required this.text,
//     required this.isCorrect,
//   });
// }

final questions = [
  Question(
    text: 'what is me 1 ? ', //Q1
    // options: [
    //   const Option(text: 'hiii', isCorrect: false),
    //   const Option(text: 'hiii', isCorrect: false),
    //   const Option(text: 'byee', isCorrect: true),
    //   const Option(text: 'hiii', isCorrect: false),
    // ],
  ),
  Question(
    text: 'what is me 2 ? ', //Q2
    // options: [
    //   const Option(text: 'hiii', isCorrect: false),
    //   const Option(text: 'hiii', isCorrect: false),
    //   const Option(text: 'byee', isCorrect: true),
    //   const Option(text: 'hiii', isCorrect: false),
    // ],
  ),
  Question(
    text: 'what is me 3 ? ', //Q3
    // options: [
    //   const Option(text: 'hiii', isCorrect: false),
    //   const Option(text: 'hiii', isCorrect: false),
    //   const Option(text: 'byee', isCorrect: true),
    //   const Option(text: 'hiii', isCorrect: false),
    // ],
  ),
  Question(
    text: 'what is me 4 ? ', //Q4
    // options: [
    //   const Option(text: 'hiii', isCorrect: false),
    //   const Option(text: 'hiii', isCorrect: false),
    //   const Option(text: 'byee', isCorrect: true),
    //   const Option(text: 'hiii', isCorrect: false),
    // ],
  )
];
