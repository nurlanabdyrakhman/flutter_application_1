

import 'package:flutter/material.dart';

class IconButton2 extends StatelessWidget {
  const IconButton2({Key key,@required this.child, @required this.onTap}) : super(key: key);
  final Widget child;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 12,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      fillColor: Colors.purple,
      onPressed: onTap,
      child: child,
    );
  }
}
