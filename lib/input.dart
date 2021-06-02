import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'i.dart';
import 'w.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constant.dart';
import 'result.dart';
import 'calculate.dart';

enum gender { male, female }

class input extends StatefulWidget {
  static String id = 'input';
  const input({Key key}) : super(key: key);

  @override
  _inputState createState() => _inputState();
}

class _inputState extends State<input> {
  gender selectedgender;
  int height = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR',
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(children: [
              Expanded(
                child: c(
                    colour:
                        selectedgender == gender.male ? activecard : inactive,
                    w: IconContext(i: FontAwesomeIcons.male, l: 'MALE'),
                    f: () {
                      setState(() {
                        selectedgender = gender.male;
                      });
                    }),
              ),
              Expanded(
                child: GestureDetector(
                  child: c(
                      colour: selectedgender == gender.female
                          ? activecard
                          : inactive,
                      w: IconContext(i: FontAwesomeIcons.female, l: 'FEMALE'),
                      f: () {
                        setState(() {
                          selectedgender = gender.female;
                        });
                      }),
                ),
              )
            ])),
            Expanded(
              child: c(
                colour: activecard,
                w: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT', style: ls),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: lr,
                        ),
                        Text(
                          'cn',
                          style: ls,
                        )
                      ],
                    ),
                    SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 20.0),
                          overlayColor: Color(0x29EB1555),
                          inactiveTickMarkColor: Color(0xFF8D8E98),
                          thumbColor: Colors.pink,
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.toInt();
                              });
                            }))
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: c(
                    colour: activecard,
                    w: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: ls),
                        Text(
                          weight.toString(),
                          style: lr,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                backgroundColor: Color(0xFF4C4F5E),
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor: Color(0xFF4C4F5E),
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: c(
                    colour: activecard,
                    w: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE', style: ls),
                        Text(
                          age.toString(),
                          style: lr,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                backgroundColor: Color(0xFF4C4F5E),
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: Color(0xFF4C4F5E),
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
              ],
            )),
            GestureDetector(
              onTap: () {
                calculator c = calculator(weight: weight, height: height);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => result(
                              bmiresult: c.calc(),
                              resulttext: c.getResult(),
                              advice: c.getInterpretation(),
                            )));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                height: bottomheight,
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
