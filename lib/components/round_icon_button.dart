import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  // const RoundIconButton({Key key}) : super(key: key);
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 0.0,
      constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0x26FFFFFF),
      onPressed: onPressed,
    );
  }
}
