import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

List Ans = [];

class Options extends StatefulWidget {
  final String option;
  final bool isCorrect;
  // final int selected;
  // int onChanged;
  Options({
    super.key,
    required this.option,
    required this.isCorrect,
    // required this.selected,
    // required this.onChanged
  });

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  late bool isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = false;
  }

  Widget build(BuildContext context) {
    // int selected = 1;
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
                      widget.option,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Radio(
                        value: widget.option.hashCode,
                        groupValue: isSelected ? widget.option.hashCode : null,
                        onChanged: (val) {
                          setState(() {
                            isSelected = !isSelected;
                            if (isSelected = true) {
                              Ans.add(isSelected);
                            }
                          });
                        }),
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
