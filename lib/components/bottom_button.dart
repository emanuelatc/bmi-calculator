import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  // const BottomButton({Key key,}) : super(key: key);

  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
