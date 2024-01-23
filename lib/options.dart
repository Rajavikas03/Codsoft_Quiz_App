import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  String option;
  bool isCorrect;
  Options({super.key, required this.option, required this.isCorrect});

  @override
  Widget build(BuildContext context) {
    int selected = 1;
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 48,
          width: 240,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 3, color: Colors.white)),
          child: Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      option,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Radio(
                        value: option,
                        groupValue: selected,
                        onChanged: (val) {}),
                  ],
                )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
// Future opption(){
// }
