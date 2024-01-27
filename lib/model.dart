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
    text: ' What is the unit of electrical resistance? ', //Q1
    options: [
      Opt(text: 'a) Ohm ', isCorrect: true, isLocked: false),
      Opt(text: 'b) Volt ', isCorrect: false, isLocked: false),
      Opt(text: 'c) Ampere ', isCorrect: false, isLocked: false),
      Opt(text: 'd) Power ', isCorrect: false, isLocked: false),
    ],
  ),
  Question(
    text:
        ' Which component is used to store electrical energy in a circuit? ', //Q2
    options: [
      Opt(text: 'a) Resistor ', isCorrect: false, isLocked: false),
      Opt(text: 'b) Inductor ', isCorrect: false, isLocked: false),
      Opt(text: 'c) Capacitor ', isCorrect: true, isLocked: false),
      Opt(text: 'd) Transistor ', isCorrect: false, isLocked: false),
    ],
  ),
  Question(
    text:
        ' In a direct current (DC) circuit, current flows in which direction? ', //Q3
    options: [
      Opt(text: 'a) Constant direction ', isCorrect: true, isLocked: false),
      Opt(text: 'b) Reversing direction ', isCorrect: false, isLocked: false),
      Opt(text: 'c) Random direction ', isCorrect: false, isLocked: false),
      Opt(text: 'd) Circular direction ', isCorrect: false, isLocked: false),
    ],
  ),
  Question(
    text: ' What is the SI unit of electric charge? ', //Q4
    options: [
      Opt(text: 'a) Volt ', isCorrect: false, isLocked: false),
      Opt(text: 'b) Coulomb ', isCorrect: true, isLocked: false),
      Opt(text: 'c) Ampere ', isCorrect: false, isLocked: false),
      Opt(text: 'd) Ohm ', isCorrect: false, isLocked: false),
    ],
  ),
  Question(
    text:
        ' Which of the following is a semiconductor material commonly used in electronic devices? ', //Q5
    options: [
      Opt(text: 'a) Copper ', isCorrect: false, isLocked: false),
      Opt(text: 'b) Silicon ', isCorrect: true, isLocked: false),
      Opt(text: 'c) Aluminum ', isCorrect: false, isLocked: false),
      Opt(text: 'd) Iron ', isCorrect: false, isLocked: false),
    ],
  ),
  Question(
    text:
        '  What is the purpose of a transformer in an electrical circuit? ', //Q6
    options: [
      Opt(text: 'a) Generate electricity ', isCorrect: false, isLocked: false),
      Opt(text: 'b) Control current flow ', isCorrect: false, isLocked: false),
      Opt(text: 'c) Change voltage levels ', isCorrect: true, isLocked: false),
      Opt(text: 'd) Store energy ', isCorrect: false, isLocked: false),
    ],
  ),
  Question(
    text: ' What does AC stand for in the context of electrical power? ', //Q7
    options: [
      Opt(text: 'a) Alternating Capacitor ', isCorrect: false, isLocked: false),
      Opt(text: 'b) Ampere Current ', isCorrect: false, isLocked: false),
      Opt(text: 'c) Alternating Current ', isCorrect: true, isLocked: false),
      Opt(text: 'd) Active Current ', isCorrect: false, isLocked: false),
    ],
  ),
  Question(
    text:
        '  Which law states that the voltage across a closed loop is equal to the sum of the voltage drops? ', //Q8
    options: [
      Opt(text: "a) Faraday's Law ", isCorrect: false, isLocked: false),
      Opt(
          text: "b) Kirchhoff's Voltage Law ",
          isCorrect: true,
          isLocked: false),
      Opt(text: "c) Ohm's Law ", isCorrect: false, isLocked: false),
      Opt(text: "d) Gauss's Law ", isCorrect: false, isLocked: false),
    ],
  ),
  Question(
    text: ' What is the function of a diode in an electrical circuit? ', //Q9
    options: [
      Opt(text: 'a) Amplify signals ', isCorrect: false, isLocked: false),
      Opt(text: 'b) Store energy ', isCorrect: false, isLocked: false),
      Opt(
          text: 'c) Allow current in one direction ',
          isCorrect: true,
          isLocked: false),
      Opt(
          text: 'd) Control voltage levels ',
          isCorrect: false,
          isLocked: false),
    ],
  ),
  Question(
    text: ' What type of circuit has only one path for current to flow? ', //Q10
    options: [
      Opt(text: 'a) Parallel circuit ', isCorrect: false, isLocked: false),
      Opt(text: 'b) Series circuit ', isCorrect: true, isLocked: false),
      Opt(text: 'c) Combination circuit ', isCorrect: false, isLocked: false),
      Opt(text: 'd) Complex circuit ', isCorrect: false, isLocked: false),
    ],
  ),
];
