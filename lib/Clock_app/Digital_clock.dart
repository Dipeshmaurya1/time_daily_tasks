import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DigitalClock();
  }
}
class DigitalClock extends StatefulWidget {
  const DigitalClock({super.key});

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
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
        switch(CurrentTime.weekday)
        {
          case 1:
            Day ='Monday';
            break;
          case 2:
            Day ='Tuesday';
            break;
          case 3:
            Day ='Wednesday';
            break;
          case 4:
            Day ='Thursday';
            break;
          case 5:
            Day ='Friday';
            break;
          case 6:
            Day ='Saturday';
            break;
          case 7:
            Day ='Sunday';
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
              image: AssetImage(
                  'Assets/Image/ClockBG.jpg'),            ),
          ),
          child: SizedBox(
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.access_time_outlined,color: Colors.white,size: 50,),
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
                Text('${Day}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
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



