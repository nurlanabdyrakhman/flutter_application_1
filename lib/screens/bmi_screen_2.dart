import 'package:flutter/material.dart';
import 'package:flutter_application_1/card/reusable_cart.dart';
import 'package:flutter_application_1/constants/contants.dart';
import 'package:flutter_application_1/widgets/ege_icon_roundet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/end_button.dart';
import '../constants/icon_color.dart';
import '../icons/icon_button.dart';

class BMIScreen2 extends StatefulWidget {
  const BMIScreen2({Key key});

  @override
  State<BMIScreen2> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen2> {
  int height = 110;
  int age = 40;
  int weight = 15;
  Cender gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI Calculator'.toUpperCase(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCart(
                  onTap: () {
                    setState(() {
                      gender = Cender.Male;
                    });
                  },
                  bgColor:
                      gender == Cender.Male ? Colors.blue : cActiveCardColour,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.mars,
                        size: 65,
                      ),
                      Text(
                        'MALE',
                        style: iconTextStyle,
                      ),
                    ],
                  ),
                )),
                Expanded(
                  child: ReusableCart(
                    onTap: () {
                      setState(() {
                        gender = Cender.Female;
                      });
                    },
                    bgColor: gender == Cender.Female
                        ? Colors.red
                        : cActiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.venus,
                          size: 65,
                        ),
                        Text('FEMALE', style: iconTextStyle)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCart(
              bgColor: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'height'.toUpperCase(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('${height.toString()}', style: bHeight),
                      const Text('cm', style: kHeight),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.pink,
                        inactiveTrackColor: Colors.yellow,
                        overlayColor: Colors.green,
                        thumbColor: Colors.brown,
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 14),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 24)),
                    child: Slider(
                      min: 50.0,
                      max: 250,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(
                          () {
                            height = value.round();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ReusableCart(
                    bgColor: Colors.orange,
                    child: EgeIconRoundet(
                      text: 'Weight',
                      number: weight,
                      isCm: true,
                      minus: () {
                        setState(() {
                          weight--;
                        });
                      },
                      plus: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCart(
                  bgColor: Colors.cyan,
                  child: EgeIconRoundet(
                    text: 'AGE',
                    number: age,
                    minus: () {
                      setState(() {
                        age--;
                      });
                    },
                    plus: () {
                      setState(() {
                        age++;
                      });
                    },
                  ),
                )),
              ],
            ),
          ),
          EndButton(
            onTap: (){},
            buttonTitle: 'SEE RESULTS',
          )
        ],
      ),
    );
  }
}

enum Cender { Male, Female }
