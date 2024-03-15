
import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  var _enteredNumber = ' ';
  var _output = ' ';

  void onButtonClick(value) {
    if (value == "AC") {
      _enteredNumber = ' ';
      _output = ' ';
    } else if (value == "<") {
      _enteredNumber = _enteredNumber.substring(0, _enteredNumber.length - 1);
    } else if (value == "=") {
      int decimalNumber = int.parse(_enteredNumber);
      if (decimalNumber == 0) {
        _output = '0';
      } else {
        List<int> binaryDigits = [];
        while (decimalNumber > 0) {
          binaryDigits.insert(0, decimalNumber % 2);
          decimalNumber ~/= 2;
        }
        _output = _enteredNumber;
        _enteredNumber = binaryDigits.join('');
      }
    } else {
      _enteredNumber = _enteredNumber + value;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        _output,
                        textAlign: TextAlign.left,
                        style: const TextStyle(color: Colors.white, fontSize: 50),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          _enteredNumber,
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.white, fontSize: 100),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () => onButtonClick('7'),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.grey[850],
                          padding: const EdgeInsets.all(20),
                        ),
                        child: const Text(
                          '7',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: ()  => onButtonClick('8'),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.grey[850],
                          padding: const EdgeInsets.all(20),
                        ),
                        child: const Text(
                          '8',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: ()=> onButtonClick('9'),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.grey[850],
                          padding: const EdgeInsets.all(20),
                        ),
                        child: const Text(
                          '9',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: ()=> onButtonClick('4'),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.grey[850],
                          padding: const EdgeInsets.all(20),
                        ),
                        child: const Text(
                          '4',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () => onButtonClick('5'),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.grey[850],
                          padding: const EdgeInsets.all(20),
                        ),
                        child: const Text(
                          '5',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () => onButtonClick('6'),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.grey[850],
                          padding: const EdgeInsets.all(20),
                        ),
                        child: const Text(
                          '6',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () => onButtonClick('1'),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.grey[850],
                          padding: const EdgeInsets.all(20),
                        ),
                        child: const Text(
                          '1',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () => onButtonClick('2'),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.grey[850],
                          padding: const EdgeInsets.all(20),
                        ),
                        child: const Text(
                          '2',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () => onButtonClick('3'),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.grey[850],
                          padding: const EdgeInsets.all(20),
                        ),
                        child: const Text(
                          '3',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () => onButtonClick("AC"),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.amber[700],
                          padding: const EdgeInsets.all(14),
                        ),
                        child: const Text(
                          'AC',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () => onButtonClick('0'),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.grey[850],
                          padding: const EdgeInsets.all(20),
                        ),
                        child: const Text(
                          '0',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: ()  => onButtonClick("="),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.amber[700],
                          padding: const EdgeInsets.all(20),
                        ),
                        child: const Text(
                          '=',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

