import 'package:flutter/material.dart';
import 'package:quiz_apk/Compelete.dart';
import 'package:quiz_apk/model.dart';

List c = [];
List w = [];

List<String> selectedOptions = [];

class quiz_main extends StatefulWidget {
  const quiz_main({super.key});

  @override
  State<quiz_main> createState() => _quiz_mainState();
}

class _quiz_mainState extends State<quiz_main> {
  final PageController _pageController = PageController();
  String isSelected = ' ';
  @override
  void initState() {
    super.initState();
    // isSelected = ' ';
    // selectedOptions[questions.length] = ' ';
    selectedOptions = List<String>.filled(questions.length, '');
    c.clear();
    w.clear();
  }

  Widget build(BuildContext context) {
    // var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        decoration: gradientcolor1(),
        child: PageView.builder(
          controller: _pageController,
          itemCount: questions.length,
          itemBuilder: (context, index) {
            final _question = questions[index];
            final optt = _question.options;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 2, color: Colors.white)),
                    child: Text(
                      " Question ${index + 1}/${questions.length} ",
                      style: const TextStyle(
                          fontSize: 50, fontWeight: FontWeight.bold),
                      softWrap: true,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      _question.text,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    for (int i = 0; i < optt.length; i++)
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            // onTap function
                            onTap: () async {
                              setState(() {
                                selectedOptions[index] = optt[i].text;
                                optt[i].isLocked = true;
                                if (i != 0) {
                                  optt[0].isLocked = false;
                                  print('0');
                                }
                                if (i != 1) {
                                  optt[1].isLocked = false;
                                  print('1');
                                }
                                if (i != 2) {
                                  optt[2].isLocked = false;
                                  print('2');
                                }
                                if (i != 3) {
                                  optt[3].isLocked = false;
                                  print('3');
                                }
                              });
                              if (index < questions.length - 1) {
                                try {
                                  await pageFunctionfrwd();
                                } catch (StackTrace, Error) {
                                  print(" $StackTrace $Error error!!!");
                                }
                              }
                            },
                            child: Container(
                              height: 48,
                              width: width * 0.69,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border:
                                    Border.all(width: 3, color: Colors.white),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      optt[i].text,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      // maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                    ),
                                    Radio(
                                        activeColor: Colors.green,
                                        value: optt[i].text,
                                        groupValue: selectedOptions[index],
                                        onChanged: (val) async {
                                          setState(() {
                                            selectedOptions[index] =
                                                val.toString();
                                            optt[i].isLocked = true;
                                            if (i != 0) {
                                              optt[0].isLocked = false;
                                              print('0');
                                            }
                                            if (i != 1) {
                                              optt[1].isLocked = false;
                                              print('1');
                                            }
                                            if (i != 2) {
                                              optt[2].isLocked = false;
                                              print('2');
                                            }
                                            if (i != 3) {
                                              optt[3].isLocked = false;
                                              print('3');
                                            }
                                          });
                                          if (index < questions.length - 1) {
                                            try {
                                              await pageFunctionfrwd();
                                            } catch (StackTrace, Error) {
                                              print(
                                                  " $StackTrace $Error error!!!");
                                            }
                                          }
                                        }),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        onPressed: () async {
                          try {
                            await pageFunctionrev();
                          } catch (StackTrace, Error) {
                            print(" $StackTrace $Error error!!!");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.deepPurple[400],
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                            elevation: 6),
                        child: const Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        onPressed: () async {
                          try {
                            await pageFunctionfrwd();
                          } catch (StackTrace, Error) {
                            print(" $StackTrace $Error error!!!");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.deepPurple[400],
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                            elevation: 6),
                        child: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                ElevatedButton(
                  onPressed: () async {
                    // Result  Function
                    await result();
                    if ((index + 1) % questions.length == 0) {
                      // ignore: use_build_context_synchronously
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CompeletePage(),
                        ),
                      );
                    } else {
                      print("hiiii ${questions.length}"); // check
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.deepPurple[400],
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.fromLTRB(40, 16, 40, 16),
                      elevation: 6),
                  child: const Text('  Submit  '),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
              //
            );
          },
        ),
      ),
    );
  }

//  Page veiw Forward move
  pageFunctionfrwd() async {
    if (_pageController.page! < questions.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

// Page veiw backward move
  pageFunctionrev() async {
    if (_pageController.page! <= questions.length - 1) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  result() {
    for (int j = 0; j < questions.length; j++) {
      for (int k = 0; k < questions[j].options.length; k++) {
        // Correct Answer Condition
        if (questions[j].options[k].isLocked == true &&
            questions[j].options[k].isCorrect == true) {
          c.add(questions[j].options[k].text);
          print('$c hii'); // check
        }
        //  Wrong Anwser Condition
        if (questions[j].options[k].isLocked != true &&
            questions[j].options[k].isCorrect == true) {
          w.add(questions[j].options[k].text);
          print(w); // check
        }
      }
    }
  }
}

// class gradientcolor extends StatelessWidget {
//   const gradientcolor({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//             colors: [Colors.deepPurple, Colors.purple],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter),
//       ),
//     );
//   }
// }

// gradient Linear color
Decoration gradientcolor1() {
  return const BoxDecoration(
      gradient: LinearGradient(colors: [
    Colors.purple,
    Colors.blue,
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter));
}
