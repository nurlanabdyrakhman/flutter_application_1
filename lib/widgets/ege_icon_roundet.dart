import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/icon_color.dart';
import '../icons/icon_button.dart';

class EgeIconRoundet extends StatelessWidget {
  const EgeIconRoundet({
    Key key,
    @required this.text,
    @required this.number,
    @required this.minus,
    @required this.plus,
     this.isCm=false,
  }) : super(key: key);
  final String text;
  final int number;
  final Function minus;
  final Function plus;
  final bool isCm;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        text,
        style: bHeight,
      ),
     isCm? Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            number.toString(),
          ),
          Text(
           'kg'
          ),
        ],
      ):Text(
            number.toString(),
          ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton2(
            onTap: minus,
            child: const FaIcon(FontAwesomeIcons.minus),
          ),
          const SizedBox(
            width: 12,
          ),
          IconButton2(
            onTap: plus,
            child: const FaIcon(FontAwesomeIcons.plus),
          ),
        ],
      )
    ]);
  }
}
