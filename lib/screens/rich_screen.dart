import 'package:flutter/material.dart';

class RichScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'I m Rich',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 43,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Positioned(child:Text('salam'),
          height: 59,
           ),
           Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(child: Text('I \m Rich')),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 145,
                ),
                const Image(image: AssetImage('assets/almaz.png')),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
