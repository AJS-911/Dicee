import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text('Dicee')),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void change_dice_number() {
    leftdicenumber = Random().nextInt(6) + 1;
    rightdicenumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      change_dice_number();
                    });
                  },
                  child: Image.asset('images/dice$leftdicenumber.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      change_dice_number();
                    });
                  },
                  child: Image.asset('images/dice$rightdicenumber.png'))),
        ],
      ),
    );
  }
}
