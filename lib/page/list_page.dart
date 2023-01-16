

// Container(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(
//                       'Score: ${index}/5',
//                       style: TextStyle(
//                         color: Colors.greenAccent,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () => reset(),
//                       child: const Text(
//                         'Reset',
//                         style: TextStyle(
//                           color: Colors.red,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 Container(
//                   height: 150,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     border: Border.all(color: Colors.teal),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         questions[index].question,
//                         style: TextStyle(fontSize: 22),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: InkWell(
//                         onTap: () => checkAnswer(true, ctx),
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: Colors.green,
//                               borderRadius: BorderRadius.circular(14),
//                             ),
//                             height: 80,
//                             child: const Center(
//                               child: Text(
//                                 'true ',
//                                 style: TextStyle(
//                                     fontSize: 22,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 8,
//                     ),
//                     Expanded(
//                       child: InkWell(
//                         onTap: () => checkAnswer(false, ctx),
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: Colors.red,
//                               borderRadius: BorderRadius.circular(14),
//                             ),
//                             height: 80,
//                             child: const Center(
//                               child: Text(
//                                 'false',
//                                 style: TextStyle(
//                                     fontSize: 22,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );