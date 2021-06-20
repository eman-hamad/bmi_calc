import 'dart:math';

import 'package:bmi_calc/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  
  int weight = 40;
  int age = 15;
  bool isMale = true;
  double height = 140;

  final buttonColor = Color(0xffF24F8A);
  final containerColor = Color(0xff2C2947);
  final fontColor = Color(0xff5C5B6C);
  final backgroundColor = Color(0xff0B0E1E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Container(
        color: backgroundColor,
        child: Column(children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: isMale ? buttonColor : fontColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/male.png'),
                                height: 90,
                                width: 90,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: !isMale ? buttonColor : fontColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                height: 90,
                                width: 90,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: containerColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: fontColor,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: fontColor,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          value: height,
                          max: 220,
                          min: 80,
                          activeColor: buttonColor,
                          inactiveColor: fontColor,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });

                            print(value.round());
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: containerColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: fontColor,
                              ),
                            ),
                            Text(
                              '${weight}',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  backgroundColor: fontColor,
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                  heroTag: 'weight+',
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 10) {
                                        weight--;
                                      }
                                    });
                                  },
                                  mini: true,
                                  backgroundColor: fontColor,
                                  child: Icon(
                                    Icons.remove,
                                    size: 30,
                                  ),
                                  heroTag: "weight-",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: containerColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 21,
                                color: fontColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  backgroundColor: fontColor,
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                  heroTag: "age+",
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age > 1) {
                                        age--;
                                      }
                                    });
                                  },
                                  backgroundColor: fontColor,
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                    size: 30,
                                  ),
                                  heroTag: "age-",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: buttonColor,
            child: MaterialButton(
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  print(result.round());

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BmiResultScreen(
                                age: age,
                                gender: isMale,
                                result: result.round(),
                              )));
                },
                height: 58,
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
          )
        ]),
      ),
    );
  }
}
