import 'package:flutter/material.dart';
import 'package:time_daily_tasks/Clock_app/Analog_Clock.dart';
import 'package:time_daily_tasks/Clock_app/Digital_clock.dart';
import 'package:time_daily_tasks/Clock_app/Strap_Watch.dart';
import 'package:time_daily_tasks/Flutter%20Buttons/Button_Tasks.dart';
void main()
{
  runApp(ClockApp());
}
class ClockApp extends StatelessWidget {
  const ClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: StrapWatch(),
      initialRoute: '/digital',
      routes: {
        '/digital': (context) => DigitalClock(),
        '/analog': (context) => Analog(),
        '/strap': (context) => StrapWatch(),
      },
    );
  }
}
