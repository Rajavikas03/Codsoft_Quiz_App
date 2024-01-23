import 'package:flutter/material.dart';
import 'package:quiz_apk/Compelete.dart';
import 'package:quiz_apk/main.dart';
import 'package:quiz_apk/model.dart';
import 'package:quiz_apk/options.dart';

class quiz_main extends StatefulWidget {
  const quiz_main({super.key});

  @override
  State<quiz_main> createState() => _quiz_mainState();
}

class _quiz_mainState extends State<quiz_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          gradientcolor(),
          Expanded(
            child: PageView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  final _question = questions[index];
                  // var  first_options = questions[0];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: ,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(width: 2, color: Colors.white)),
                          child: Text(
                            " Question ${index + 1}/10 ",
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 80,
                        child: Text(
                          _question.text,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Options(
                        option: 'Option A',
                        isCorrect: false,
                      ),
                      Options(
                        option: 'Option B',
                        isCorrect: false,
                      ),
                      Options(
                        option: 'Option C',
                        isCorrect: false,
                      ),
                      Options(
                        option: 'Option D',
                        isCorrect: true,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if ((index + 1) % questions.length == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CompeletePage()),
                              );
                            } else {
                              print("hiiii ${questions.length}");
                            }
                          },
                          child: Text('Submit')),
                    ],
                  );
                }),
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
              end: Alignment.bottomCenter)),
    );
  }
}
