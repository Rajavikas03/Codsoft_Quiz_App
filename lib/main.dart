import 'package:flutter/material.dart';
import 'package:quiz_apk/quiz_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          Image.asset('lib/assets/innovation.png'),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            "QUIZ",
            style: TextStyle(
                color: Colors.deepPurple[400],
                fontSize: 100,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height * 0.07,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const quiz_main()),
              );
            },
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepPurple[400],
                padding: const EdgeInsets.fromLTRB(40, 16, 40, 16),
                elevation: 6),
            child: const Text(
              '  START  ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      )),
    );
  }
}
