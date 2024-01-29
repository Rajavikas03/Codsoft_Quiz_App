import 'package:flutter/material.dart';
import 'package:quiz_apk/main.dart';
import 'package:quiz_apk/model.dart';
import 'package:quiz_apk/quiz_page.dart';

class CompeletePage extends StatefulWidget {
  const CompeletePage({
    super.key,
  });

  @override
  State<CompeletePage> createState() => _CompeletePageState();
}

class _CompeletePageState extends State<CompeletePage> {
  @override
  Widget build(BuildContext context) {
    double ctans = (c.length).toDouble();
    // double wrgans = w.length.toDouble();
    double tolans = questions.length.toDouble();
    double pots = (((ctans) / tolans) * 100);
    return PopScope(
      canPop: false,
      child: Scaffold(
          body: Container(
        decoration: gradientcolor1(),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        c.clear();
                        w.clear();
                      });
                      // Nagigate to MainPage
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyHomePage(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: CircleAvatar(
                radius: 85,
                backgroundColor: Colors.white30,
                child: CircleAvatar(
                  radius: 78,
                  backgroundColor: Colors.white,
                  child: Text(
                    '$pots pt',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 2, color: Colors.black87)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 10,
                        ),
                        Text(
                          ' Correct Answer: ${c.length}',
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 10,
                        ),
                        Text(
                          ' Wrong Answer: ${w.length}',
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.yellow,
                          radius: 10,
                        ),
                        Text(
                          ' No.of Answered ques: ${questions.length}',
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
