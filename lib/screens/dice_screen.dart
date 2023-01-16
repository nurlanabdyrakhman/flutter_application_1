import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int count = 1;
  int rightCount = 1;
  int leftCount = 6;
  void throwDice() {
    setState(() {});
     rightCount= Random().nextInt(6)+1;
    leftCount=Random().nextInt(6)+1;
  
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Dice App',
          style: TextStyle(color: Colors.black, fontSize: 34),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: throwDice,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/dice$rightCount.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: throwDice,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/dice$leftCount.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
