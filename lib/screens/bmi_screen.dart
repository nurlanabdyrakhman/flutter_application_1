import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/buttom_button.dart';
import '../constants/contants.dart';
import '../page/calculation_brain.dart';
import '../widgets/icon_content.dart';
import '../widgets/weight_age_widget.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key key}) : super(key: key);

  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  int height = 110; //adamdin boyu
  int weight = 40; //adamdin ves
  int age = 15; //adamdin jashy
  Gender gender;

  Widget cmText = Text(
    ' cm',
    style: TextStyle(
      fontSize: 22.0,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator'.toUpperCase(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    bgColor: gender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    child: IconContent(
                      text: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    bgColor: gender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              bgColor: kCardBGColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('height'.toUpperCase()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.toString()}',
                        style: kHeightTextStyle,
                      ),
                      cmText,
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kRed,
                      inactiveTrackColor: Colors.white,
                      thumbColor: kRed,
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 9.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 18.0),
                    ),
                    child: Slider(
                      min: 50.0,
                      max: 250.0,
                      value: height.toDouble(),
                      onChanged: (value) {
                        print('san: $value');
                        height = value.toInt();
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    bgColor: kCardBGColor,
                    child: WeightAgeWidget(
                      isCm: true,
                      minus: () {
                        weight--;
                        setState(() {});
                      },
                      plus: () {
                        weight++;
                        setState(() {});
                      },
                      text: 'WEIGHT',
                      number: weight,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bgColor: kCardBGColor,
                    child: WeightAgeWidget(
                      minus: () {
                        age--;
                        setState(() {});
                      },
                      plus: () {
                        age++;
                        setState(() {});
                      },
                      text: 'AGE',
                      number: age,
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              CalculatorBrain calculatorBrain = CalculatorBrain(
                height: height,
                weight: weight,
              );
              final result = calculatorBrain.calculateBMI();

              print('result: $result');
            },
            buttonTitle: 'SEE RESULST',
          ),
        ],
      ),
    );
  }

  Container _buildContainer2() {
    return Container(
      // color: Color(0xFF1d1e30), Egerde decoration bar bolso, bul color berilbeyt

      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

enum Gender { male, female }
