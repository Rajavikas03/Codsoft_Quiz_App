import 'package:flutter/material.dart';
import 'package:quiz_apk/Compelete.dart';
import 'package:quiz_apk/model.dart';

bool isSelected1 = false;
bool isSelected2 = false;
bool isSelected3 = false;
bool isSelected4 = false;

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
                                              onChanged: (val) {
                                                setState(() {
                                                  isSelected = val.toString();
                                                });
                                              }),
                                          // Radio(
                                          //   value: "Yes",
                                          //   groupValue: isSelected,
                                          //   onChanged: (val) {
                                          //     setState(() {
                                          //       isSelected = val.toString();
                                          //     });
                                          //   },
                                          // ),
                                        ],
                                      )),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),

                        // Options(
                        //   option: questions[index].options[i].text,
                        //   isCorrect: questions[index].options[i].isCorrect,
                        //   selected: questions[index].options[i].isLocked,
                        // ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_pageController.page! <
                                  questions.length - 1) {
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
                            onPressed: () {
                              if (_pageController.page! <
                                  questions.length - 1) {
                                try {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
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
                      onPressed: () {
                        if ((index + 1) % questions.length == 0) {
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
