import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({Key? key, required this.icon, this.onClick})
      : super(key: key);
  final IconData icon;
  Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClick,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
    );
  }
}