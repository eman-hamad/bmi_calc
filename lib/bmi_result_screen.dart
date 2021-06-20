import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final buttonColor = Color(0xffF24F8A);
  final int result;
  final bool gender;
  final int age;

  BmiResultScreen({
    @required this.result,
    @required this.gender,
    @required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
            ),
          ),
          title: Text("BMI Result"),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: buttonColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gender : ${gender ? "Male" : "Female"}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Result : ${result} ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Age : ${age}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ));
  }
}
