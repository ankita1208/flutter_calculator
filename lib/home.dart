import 'package:calculator_app/buttons.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  late int firstNumber;
  late int secondNumber;
  String history = '';
  String textToDisplay = '';
  late String res;
  late String operation;

  void onButtonPressed(String buttonValue) {
   if (buttonValue == 'C') {
     firstNumber = 0;
     secondNumber = 0;
     textToDisplay ='';
     res ='';
   } else if (buttonValue == 'AC') {
     firstNumber = 0;
     secondNumber = 0;
     textToDisplay ='';
     res ='';
     history = '';
   } else if (buttonValue =='+' || buttonValue == '-' || buttonValue == 'X' || buttonValue == '/') {
     firstNumber = int.parse(textToDisplay);
     res = '';
     operation = buttonValue;
   } else if (buttonValue == '=') {
     secondNumber = int.parse(textToDisplay);
     if(operation == '+') {
       res = (firstNumber + secondNumber).toString();
       history = firstNumber.toString() +  operation.toString() + secondNumber.toString();
     }
     if(operation == '-') {
       res = (firstNumber - secondNumber).toString();
       history = firstNumber.toString() +  operation.toString() + secondNumber.toString();
     }
     if(operation == 'X') {
       res = (firstNumber * secondNumber).toString();
       history = firstNumber.toString() +  operation.toString() + secondNumber.toString();
     }
     if(operation == '/') {
       res = (firstNumber / secondNumber).toString();
       history = firstNumber.toString() +  operation.toString() + secondNumber.toString();
     }
   } else {
     res = int.parse(textToDisplay +buttonValue).toString();
   }

   setState(() {
     textToDisplay = res;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                history,
                style: TextStyle(fontSize: 24, color: Colors.grey),
              ),
            ),
            alignment: Alignment(1.0, 1.0),
          ),
          Container(
            padding: const EdgeInsets.all(12.0),
            child:  Text(
              textToDisplay,
              style: TextStyle(fontSize: 48, color: Colors.white),
            ),
            alignment: Alignment(1.0, 1.0),
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(color: Colors.white, text: 'AC', onButtonClick:onButtonPressed,),
              Button(color: Colors.white, text: 'C', onButtonClick:onButtonPressed,),
              Button(color: Colors.amber,
                text: '<',
                textColor: Colors.white,
                onButtonClick
                :onButtonPressed,),
              Button(color: Colors.amber,
                text: '/',
                textColor: Colors.white,
                onButtonClick
                :onButtonPressed,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(color: Colors.white, text: '9', onButtonClick:onButtonPressed,),
              Button(color: Colors.white, text: '8', onButtonClick:onButtonPressed,),
              Button(color: Colors.white, text: '7', onButtonClick:onButtonPressed,),
              Button(color: Colors.amber,
                text: 'X',
                textColor: Colors.white,
                onButtonClick
                :onButtonPressed,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(color: Colors.white, text: '6', onButtonClick:onButtonPressed,),
              Button(color: Colors.white, text: '5', onButtonClick:onButtonPressed,),
              Button(color: Colors.white, text: '4', onButtonClick:onButtonPressed,),
              Button(color: Colors.amber,
                text: '-',
                textColor: Colors.white,
                onButtonClick
                :onButtonPressed,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(color: Colors.white, text: '3', onButtonClick:onButtonPressed,),
              Button(color: Colors.white, text: '2', onButtonClick:onButtonPressed,),
              Button(color: Colors.white, text: '1', onButtonClick:onButtonPressed,),
              Button(color: Colors.amber,
                text: '+',
                textColor: Colors.white,
                onButtonClick
                :onButtonPressed,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(color: Colors.white, text: '+/-', onButtonClick:onButtonPressed,),
              Button(color: Colors.white, text: '0', onButtonClick:onButtonPressed,),
              Button(color: Colors.white, text: '00', onButtonClick:onButtonPressed,),
              Button(color: Colors.amber,
                text: '=',
                textColor: Colors.white,
                onButtonClick
                :onButtonPressed,),
            ],
          ),
        ],
      ),
    );
  }
}
