import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/cupertino.dart';
import '../Constants.dart';


class IconContent extends StatelessWidget{
  final IconData fontAwesomeIcons;
  final String textButtom;

  IconContent({this.fontAwesomeIcons, this.textButtom});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          fontAwesomeIcons,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(textButtom, style: kLableTextStyle,
        ),
      ],
    ) ;
  }
}