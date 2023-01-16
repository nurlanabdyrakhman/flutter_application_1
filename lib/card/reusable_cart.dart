import 'package:flutter/material.dart';

class ReusableCart extends StatelessWidget {
  const ReusableCart({
    Key key,
    this.bgColor, this.child,  this.onTap,
  }) : super(key: key);
  final Color bgColor;
  final Widget child;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          decoration: BoxDecoration(
              color: bgColor, 
              borderRadius: BorderRadius.circular(12),
              
              ),
              child: child,
        ),
      ),
    );
  }
}
