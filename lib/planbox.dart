import 'package:flutter/material.dart';

import 'hiring/information.dart';

class PlanBox extends StatefulWidget {
  @override
  State<PlanBox> createState() => _PlanBoxState();
}

class _PlanBoxState extends State<PlanBox> {
  bool set1 = false;

  bool set2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  set1 = true;
                  set2 = false;
                });
              },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: set2 ? Colors.red : Colors.blue,
                      width: set2 ? 1.5 : 4),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Daily",
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Starting at 1000",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "A day",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'hello',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            // InkWell(
            //   onTap: () {
            //     setState(() {
            //       set2 = true;
            //       set1 = false;
            //     });
            //   },
            //   child: Container(
            //     height: 150,
            //     width: 150,
            //     decoration: BoxDecoration(
            //       border: Border.all(
            //           color: set1 ? Colors.red : Colors.blue,
            //           width: set1 ? 1.5 : 4),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(16),
            //       ),
            //     ),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text(
            //           "Yearly",
            //           style: TextStyle(
            //             fontFamily: 'hello',
            //             fontSize: 20,
            //             fontWeight: FontWeight.w500,
            //             color: Colors.black,
            //           ),
            //         ),
            //         SizedBox(height: 8),
            //         Text(
            //           "Starting at 10000",
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //             fontFamily: 'hello',
            //             fontSize: 20,
            //             fontWeight: FontWeight.w500,
            //             color: Colors.black,
            //           ),
            //         ),
            //         SizedBox(height: 5),
            //         Text(
            //           "Once a month",
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //             fontFamily: 'hello',
            //             fontSize: 16,
            //             fontWeight: FontWeight.w500,
            //             color: Colors.black,
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
        SizedBox(height: 20),
        Text('Note: Charges will be applied based on size of your garden.**'),
        SizedBox(height: 50),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Information(
                    bool1: set1,
                    bool2: set2,
                  ),
                ));
          },
          child: Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Center(
                child: Text(
              'Start Plan',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
          ),
        ),
      ],
    );
  }
}

// class Deco extends StatefulWidget {
//   final Plan plan;
//
//   const Deco({super.key, required this.plan});
//
//   @override
//   State<Deco> createState() => _DecoState();
// }
//
// class _DecoState extends State<Deco> {
//   bool _isselected1 = false;
//   bool _isselected2 = false;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _isselected = !_isselected;
//         });
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           decoration: BoxDecoration(
//             border: Border.all(
//                 color: _isselected ? Colors.black : Colors.red,
//                 width: _isselected ? 1.5 : 4),
//             borderRadius: BorderRadius.all(
//               Radius.circular(16),
//             ),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 widget.plan.time,
//                 style: TextStyle(
//                   fontFamily: 'hello',
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.black,
//                 ),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 "Starting at -${widget.plan.price}",
//                 style: TextStyle(
//                   fontFamily: 'hello',
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.black,
//                 ),
//               ),
//               SizedBox(height: 5),
//               Text(
//                 widget.plan.visit,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontFamily: 'hello',
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.black,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Catalog {
//   static List plans = [
//     Plan('Daily', '1000', 'One Day'),
//     Plan('Yearly', '10000', 'Once a month')
//   ];
// }
//
// class Plan {
//   String time;
//   String price;
//   String visit;
//   Plan(this.time, this.price, this.visit);
// }
