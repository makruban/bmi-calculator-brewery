import 'package:bmi_calculator/components/ReuseableCard.dart';
import 'package:flutter/material.dart';
import '../components/ReuseableCard.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/components/BottonButton.dart';

class ResultsPage extends StatelessWidget{

  String result;
  String commonText;
  String informText;
  ResultsPage({this.result, this.commonText, this.informText});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
              alignment: Alignment.center,
      child: Text('Your Result', style: kTitleTextStyle,)),),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kInactivCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(commonText.toUpperCase(),
                  style: kResultTextStyle,
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
    color: Color(0xFFEB1555),
    ),
                      ),

                    child: Text(result,
                    style: kBMITextStyle,
                    ),
                  ),
                  Text(informText,
                  style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE',
          onTap: (){
            Navigator.pop(context);
          },),
        ],
      )
    );
  }
}