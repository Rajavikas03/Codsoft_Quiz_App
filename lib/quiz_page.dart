import 'package:flutter/material.dart';
import 'package:quiz_apk/Compelete.dart';
import 'package:quiz_apk/model.dart';
import 'package:quiz_apk/options.dart';

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
  bool t = false;
  @override
  void initState() {
    super.initState();
    isSelected1 = false;
    isSelected2 = false;
    isSelected3 = false;
    isSelected4 = false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          const gradientcolor(),
          Expanded(
            child: PageView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                // int indexx = index;
                final _question = questions[index];
                var optt = questions[index].options;
                // var  first_options = questions[0];

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: ,
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
                    // Options(
                    //   option: 'Option A',
                    //   isCorrect: false,
                    // ),
                    // Options(
                    //   option: 'Option B',
                    //   isCorrect: false,
                    // ),
                    // Options(
                    //   option: 'Option C',
                    //   isCorrect: false,
                    // ),
                    // Options(
                    //   option: 'Option D',
                    //   isCorrect: true,
                    // ),
                    const SizedBox(
                      height: 100,
                    ),
                    // for(){
                    // Text(questions[index].options[2].text),};
                    Column(
                      children: [
                        for (int i = 0; i < questions.length; i++)
                          // Text(questions[index].options[i].text),
                          Options(
                            option: questions[index].options[i].text,
                            isCorrect: questions[index].options[i].isCorrect,
                            isSelected: false,
                          ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // if ((index + 1) % questions.length == 0) {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const CompeletePage(),
                        //     ),
                        //   );
                        // } else {
                        //   print("hiiii ${questions.length}"); // check//
                        // }
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.deepPurple[400],
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.fromLTRB(40, 16, 40, 16),
                          elevation: 6),
                      child: const Text('  Next  '),
                    ),
                    const SizedBox(
                      height: 10,
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
                          print("hiiii ${questions.length}"); // check//
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.deepPurple[400],
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.fromLTRB(40, 16, 40, 16),
                          elevation: 6),
                      child: const Text('Submit'),
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

//   colorfunction() {
//     if(indexx)

// }
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
