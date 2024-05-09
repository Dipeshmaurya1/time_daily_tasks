import 'dart:async';

// import 'dart:html';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:time_daily_tasks/Flutter%20Buttons/Button_Tasks.dart';
import 'package:time_daily_tasks/main.dart';


class StrapWatch extends StatefulWidget {
  const StrapWatch({super.key});

  @override
  State<StrapWatch> createState() => _StrapWatchState();
}

class _StrapWatchState extends State<StrapWatch> {
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
        switch (CurrentTime.month) {
          case 1:
            Month = 'January';
            break;
          case 2:
            Month = 'February';
            break;
          case 3:
            Month = 'March';
            break;
          case 4:
            Month = 'April';
            break;
          case 5:
            Month = 'May';
            break;
          case 6:
            Month = 'June';
            break;
          case 7:
            Month = 'July';
            break;
          case 8:
            Month = 'August';
            break;
          case 9:
            Month = 'September';
            break;
          case 10:
            Month = 'October';
            break;
          case 11:
            Month = 'November';
            break;
          case 12:
            Month = 'December';
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
              fit: BoxFit.fill,
              image: AssetImage('Assets/Image/ClockBG.jpg'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 150,),
              Container(
                height: 250,
                width: 250,
                // decoration: BoxDecoration(
                //   shape: BoxShape.circle,
                //   border: Border.all(color: Colors.white, width: 0.01),
                // ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 241,
                      width: 241,
                      child: CircularProgressIndicator(
                        color: Colors.deepOrange,
                        value: CurrentTime.second / 60,
                        strokeWidth: 5,
                      ),
                    ),
                    SizedBox(
                      height: 220,
                      width: 220,
                      child: CircularProgressIndicator(
                        color: Colors.green,
                        value:
                            ((CurrentTime.hour % 12 + CurrentTime.minute / 60) /
                                12),
                        strokeWidth: 6.5,
                      ),
                    ),
                    SizedBox(
                      height: 230,
                      width: 230,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        value: CurrentTime.minute / 60,
                        strokeWidth: 5.5,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Day,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${CurrentTime.day} $Month ,${CurrentTime.year}',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${CurrentTime.hour }:${CurrentTime.minute}:${CurrentTime.second}',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                ' $meridian',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 150,),
              Container(
                height: 100,
                width: double.infinity,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, '/digital');
                    }, child: Text('Digital'),),
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, '/analog');
                    }, child: Text('Analog'),),
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, '/strap');
                    }, child: Text('Strap'),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

DateTime CurrentTime = DateTime.now();
String meridian = '';
String Day = '';
String Month = '';
