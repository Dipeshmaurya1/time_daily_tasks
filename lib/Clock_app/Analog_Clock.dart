import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClockApp(),
    );
  }
}

class ClockApp extends StatefulWidget {
  const ClockApp({super.key});

  @override
  State<ClockApp> createState() => _ClockAppState();
}

class _ClockAppState extends State<ClockApp> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        CurrentTime = DateTime.now();
        if (CurrentTime.hour > 11) {
          meridian = 'PM';
        } else {
          meridian = 'AM';
        }
        switch (CurrentTime.weekday) {
          case 1:
            Day = 'Monday';
            break;
          case 2:
            Day = 'Tuesday';
            break;
          case 3:
            Day = 'Wednesday';
            break;
          case 4:
            Day = 'Thursday';
            break;
          case 5:
            Day = 'Friday';
            break;
          case 6:
            Day = 'Saturday';
            break;
          case 7:
            Day = 'Sunday';
            break;
        }
      });
    });
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://st.depositphotos.com/27201292/53650/i/450/depositphotos_536500110-stock-photo-vertical-shot-milky-way-starry.jpg'),
            ),
          ),
          child: SizedBox(
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_time_outlined,
                  color: Colors.white,
                  size: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${CurrentTime.hour}:${CurrentTime.minute}:${CurrentTime.second}',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 12.0),
                        child: Text(
                          '${meridian}',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ],
                ),
                Text(
                  '${Day}',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      )),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.cyan,
                        ),
                      ),
                      ...List.generate(
                        60,
                        (index) => Transform.rotate(
                            angle: ((index + 1) * 6 * pi) / 180,
                            child: ((index + 1) % 5 == 0)
                                ? VerticalDivider(
                                    thickness: 2,
                                    color: Colors.white,
                                    endIndent: 180,
                                    indent: 1,
                                  )
                                : VerticalDivider(
                                    thickness: 2,
                                    color: Colors.blue,
                                    endIndent: 185,
                                    indent: 1,
                                  )),
                      ),
                      Transform.rotate(
                        angle: (CurrentTime.hour % 12 + CurrentTime.minute / 60) *
                            30 *
                            pi /
                            180,
                        child: VerticalDivider(
                          thickness: 4,
                          color: Colors.orangeAccent,
                          endIndent: 97,
                          indent: 40,
                        ),
                      ),
                      Transform.rotate(
                        angle: CurrentTime.minute * (6 * pi) / 180,
                        child: VerticalDivider(
                          thickness: 3,
                          color: Colors.amber,
                          endIndent: 96,
                          indent: 26,
                        ),
                      ),
                      Transform.rotate(
                        angle: CurrentTime.second * (6 * pi) / 180,
                        child: VerticalDivider(
                          thickness: 2,
                          color: Colors.cyanAccent,
                          endIndent: 97,
                          indent: 22,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

DateTime CurrentTime = DateTime.now();
String meridian = '';
String Day = '';
