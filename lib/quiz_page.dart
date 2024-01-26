import 'package:flutter/material.dart';
import 'package:quiz_apk/Compelete.dart';
import 'package:quiz_apk/main.dart';
import 'package:quiz_apk/model.dart';

List c = [];
List w = [];
List a = [];
int crt = 0;
int wrg = 0;
int ansd = 0;

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
    isSelected = ' ';
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          const gradientcolor(),
          Expanded(
            //   child:
            // buildcolumb(),
            child: PageView.builder(
              controller: _pageController,
              itemCount: questions.length,
              itemBuilder: (context, index) {
                final _question = questions[index];
                var optt = questions[index].options;
                // isSelected = '';

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 2, color: Colors.white)),
                        child: Text(
                          " Question ${index + 1}/${questions.length}",
                          style: const TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 80,
                      child: Text(
                        _question.text,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Column(
                      children: [
                        for (int i = 0;
                            i < questions[index].options.length;
                            i++)
                          Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 48,
                                width: 240,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                ),
                                child: Center(
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            questions[index].options[i].text,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Radio(
                                              activeColor: Colors.green,
                                              value: questions[index]
                                                  .options[i]
                                                  .text,
                                              groupValue: isSelected,
                                              onChanged: (val) async {
                                                setState(() {
                                                  // isSelected = ' ';
                                                  isSelected = val.toString();
                                                  questions[index]
                                                      .options[i]
                                                      .isLocked = true;
                                                  if (i != 0) {
                                                    questions[index]
                                                        .options[0]
                                                        .isLocked = false;
                                                    print('0');
                                                  }
                                                  if (i != 1) {
                                                    questions[index]
                                                        .options[1]
                                                        .isLocked = false;
                                                    print('1');
                                                  }
                                                  if (i != 2) {
                                                    questions[index]
                                                        .options[2]
                                                        .isLocked = false;
                                                    print('2');
                                                  }
                                                  if (i != 3) {
                                                    questions[index]
                                                        .options[3]
                                                        .isLocked = false;
                                                    print('3');
                                                  }
                                                });
                                                if (index <
                                                    questions.length - 1) {
                                                  try {
                                                    // await pageFunctionfrwd();
                                                  } catch (StackTrace, Error) {
                                                    print(
                                                        " $StackTrace $Error error!!!");
                                                  }
                                                }
                                              }),
                                        ],
                                      )),
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
                              if (_pageController.page! <
                                  questions.length - 1) {
                                try {
                                  await pageFunctionrev();
                                  // _pageController.nextPage(
                                  //   duration: const Duration(milliseconds: 300),
                                  //   curve: Curves.easeInOut,
                                  // );
                                } catch (StackTrace, Error) {
                                  print(" $StackTrace $Error error!!!");
                                }
                                _pageController.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.deepPurple[400],
                                backgroundColor: Colors.white,
                                padding:
                                    const EdgeInsets.fromLTRB(0, 16, 0, 16),
                                elevation: 6),
                            child: const Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ElevatedButton(
                            onPressed: () async {
                              if (_pageController.page! <
                                  questions.length - 1) {
                                try {
                                  await pageFunctionfrwd();
                                  // _pageController.nextPage(
                                  //   duration: const Duration(milliseconds: 300),
                                  //   curve: Curves.easeInOut,
                                  // );
                                } catch (StackTrace, Error) {
                                  print(" $StackTrace $Error error!!!");
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.deepPurple[400],
                                backgroundColor: Colors.white,
                                padding:
                                    const EdgeInsets.fromLTRB(0, 16, 0, 16),
                                elevation: 6),
                            child: const Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () async {
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
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  pageFunctionfrwd() async {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  pageFunctionrev() async {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Future<dynamic> result() async {
    for (int j = 0; j < questions.length; j++) {
      for (int k = 0; k < questions.length; k++) {
        if (questions[j].options[k].isLocked ==
            questions[j].options[k].isCorrect) {
          crt++;
          c.add(questions[j].options[k].isLocked);
          print("$crt hii");
        }
        if (questions[j].options[k].isLocked !=
            questions[j].options[k].isCorrect) {
          wrg++;
          w.add(questions[j].options[k].isLocked);
          print(w[j]);
        }
      }
    }
  }
}

class gradientcolor extends StatelessWidget {
  const gradientcolor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
    );
  }
}
