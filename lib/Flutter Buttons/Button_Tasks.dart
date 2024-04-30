import 'dart:js_interop';

import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Buttons(

    ),
    );
  }
}
class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: h*0.400,
              width: w*0.820,
              decoration: BoxDecoration(
                color: Color(0xffF9FFB6),
                border: Border.all(color: Colors.black,),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(onPressed: (){

                      },
                      child: Icon(Icons.add),),
                      ElevatedButton(onPressed: (){

                      }, child: Text('Heyy'),),
                      OutlinedButton(onPressed: (){

                      }, child: Text('Byee')),
                      FilledButton(onPressed: (){

                      }, child: Text('Konichiwa')),
                      FilledButton.tonal(onPressed: (){

                      }, child: Text('Bonjour')),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(onPressed: (){

                      },
                        child: Row(
                          children: [
                            Icon(Icons.add),
                            Text('Add'),

                          ],
                        ),),
                      ElevatedButton(onPressed: (){

                      }, child: Row(
                        children: [
                          Icon(Icons.settings),
                          Text('Heyy'),
                        ],
                      ),),
                      OutlinedButton(onPressed: (){

                      }, child: Row(
                        children: [
                          Icon(Icons.exit_to_app_outlined),
                          Text('Byee'),
                        ],
                      )),
                      FilledButton(onPressed: (){

                      }, child: Row(
                        children: [
                          Icon(Icons.waving_hand),
                          Text('Konichiwa'),
                        ],
                      )),
                      FilledButton.tonal(onPressed: (){

                      }, child: Row(
                        children: [
                          Icon(Icons.emoji_people),
                          Text('Bonjour'),
                        ],
                      )),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(onPressed: (){

                      },
                        child: Icon(Icons.remove),),
                      ElevatedButton(onPressed: (){

                      }, child: Icon(Icons.access_time_filled_outlined),),
                      OutlinedButton(onPressed: (){

                      }, child: Icon(Icons.ac_unit_rounded)),
                      FilledButton(onPressed: (){

                      }, child: Icon(Icons.account_balance_rounded)),
                      FilledButton.tonal(onPressed: (){

                      }, child: Icon(Icons.account_circle_outlined)),
                    ],
                  ),


                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: h*0.150,
              width: w*0.820,
              decoration: BoxDecoration(
                color: Color(0xffF9FFB6),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton.small(onPressed: (){

                  },
                  child: Icon(Icons.add),),
                  FloatingActionButton(onPressed: (){

                  },
                    child: Icon(Icons.access_time_filled_rounded),),
                  ElevatedButton(onPressed: (){

                  }, child: Row(
                    children: [
                      Icon(Icons.add),
                      Text('Create',style: TextStyle(fontSize: 20),),
                    ],
                  )),

                  FloatingActionButton.large(onPressed: (){

                  },
                  child: Icon(Icons.access_time_filled_rounded),),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: h*0.200,
              width: w*0.820,
              decoration: BoxDecoration(
                color: Color(0xffF9FFB6),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 45,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Color(0xffDFFBA9),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.check),
                            Text('Day'),
                            Divider(
                              height: 20,
                              thickness: 10,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            ),
                            Icon(Icons.calendar_view_week),
                            Text('Week'),
                            Divider(
                              height: 20,
                              thickness: 20,
                              indent: 20,
                              endIndent: 0,
                              color: Colors.black,
                            ),
                            Icon(Icons.calendar_view_month),
                            Text('Month'),Divider(
                              height: 20,
                              thickness: 20,
                              indent: 20,
                              endIndent: 0,
                              color: Colors.black,
                            ),
                            Icon(Icons.calendar_month_outlined),
                            Text('Year'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 35,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color(0xffDFFBA9),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('XS'),
                            Divider(
                              height: 20,
                              thickness: 5,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            ),
                            // Icon(Icons.calendar_view_week),
                            Text('S'),
                            Divider(
                              height: 20,
                              thickness: 5,
                              indent: 20,
                              endIndent: 0,
                              color: Colors.black,
                            ),
                            // Icon(Icons.calendar_view_month),
                            Text('M'),
                            Divider(
                              height: 20,
                              thickness: 5,
                              indent: 20,
                              endIndent: 0,
                              color: Colors.black,
                            ),
                            Icon(Icons.check),
                            Text('L'),
                            Divider(
                              height: 20,
                              thickness: 5,
                              indent: 20,
                              endIndent: 0,
                              color: Colors.black,
                            ),
                            Icon(Icons.check),
                            Text('XL'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

