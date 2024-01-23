import 'package:flutter/material.dart';
import 'package:quiz_apk/main.dart';
import 'package:quiz_apk/quiz_page.dart';

class CompeletePage extends StatelessWidget {
  // int correctans;
  // int Wrongans;
  const CompeletePage({
    super.key,
    //  required this.correctans
    //  required this.Wrongans
  });

  @override
  Widget build(BuildContext context) {
    var correctans = 8;
    var Wrongans = 2;
    return Scaffold(
        body: Stack(
      children: [
        gradientcolor(),
        Column(
          children: [
            SizedBox(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage()),
                        );
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.red,
                        size: 40,
                      )),
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
                    '100 pt',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 2, color: Colors.black87)),
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 5,
                  // ),
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
                          ' Correct Answer: $correctans',
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
                          backgroundColor: Colors.green,
                          radius: 10,
                        ),
                        Text(
                          ' Wrong Answer: $Wrongans',
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
