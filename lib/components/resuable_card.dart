import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  ResuableCard({required this.colour, this.cardChild, this.onPress});
  final Color? colour;
  final Widget? cardChild;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}
