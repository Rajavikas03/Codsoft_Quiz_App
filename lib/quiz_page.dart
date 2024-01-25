import 'package:flutter/material.dart';
import 'package:quiz_apk/Compelete.dart';
import 'package:quiz_apk/model.dart';
import 'package:quiz_apk/options.dart';

class quiz_main extends StatefulWidget {
  const quiz_main({super.key});

  @override
  State<quiz_main> createState() => _quiz_mainState();
}

class _quiz_mainState extends State<quiz_main> {
  bool t = false;
  @override
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
                    Options(
                      option: 'Option A',
                      isCorrect: false,
                      // selected: 1,
                      // onChanged: 1,
                    ),
                    Options(
                      option: 'Option B',
                      isCorrect: false,
                      // selected: 2,
                      // onChanged: 2,
                    ),
                    Options(
                      option: 'Option C',
                      isCorrect: false,
                      // onChanged: 3,
                      // selected: 3,
                    ),
                    Options(
                      option: 'Option D',
                      isCorrect: true,
                      // selected: 4,
                      // onChanged: 4,
                    ),
                    const SizedBox(
                      height: 100,
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
                          print("hiiii ${questions.length}");
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
