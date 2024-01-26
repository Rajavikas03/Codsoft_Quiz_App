// import 'package:flutter/material.dart';
// import 'package:quiz_apk/model.dart';

List Ans = [];
List Crt = [];
List Wrg = [];

// class Options extends StatefulWidget {
//   final String option;
//   final bool isCorrect;
//   bool selected;
//   // int onChanged;
//   Options({
//     super.key,
//     required this.option,
//     required this.isCorrect,
//     required this.selected,
//     // required this.onChanged
//   });

//   @override
//   State<Options> createState() => _OptionsState();
// }

// class _OptionsState extends State<Options> {
//   late bool isSelected;

//   @override
//   void initState() {
//     super.initState();
//     isSelected = false;
//   }

//   Widget build(BuildContext context) {
//     // int selected = 1;
//     return Column(
//       children: [
//         const SizedBox(
//           height: 10,
//         ),
//         Container(
//           height: 48,
//           width: 240,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               border: Border.all(width: 3, color: Colors.white)),
//           child: Center(
//             child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 18),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       widget.option,
//                       style: const TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     Radio(
//                         activeColor: Colors.green,
//                         value: widget.option.hashCode,
//                         groupValue: isSelected ? widget.option.hashCode : null,
//                         onChanged: (val) {
//                           setState(() {
//                             print("${widget.selected}hiii");
//                             isSelected = !isSelected;
//                             widget.selected = isSelected;
//                             print("${widget.selected}hiii");
//                             // print('${questions[0].options[0].isLocked}byee');
//                             // if (isSelected = true) {
//                             //   Ans.add(isSelected);
//                             //   print("huu${widget.isCorrect}"); // check
//                             //   if (widget.isCorrect == true) {
//                             //     Crt.add(widget.isCorrect);
//                             //   } else if (widget.isCorrect == false) {
//                             //     Wrg.add(widget.isCorrect);
//                             //     print("hyy${widget.isCorrect}"); // check
//                             //   }
//                             // }
//                           });
//                         }),
//                   ],
//                 )),
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//       ],
//     );
//   }
// }
