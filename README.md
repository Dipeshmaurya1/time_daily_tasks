
# Buttons Task
<p>
<img src="https://github.com/Dipeshmaurya1/time_daily_tasks/assets/149373441/ab4d1d46-db0d-4024-b135-fe6b1f20ec9d" width=22% height=35%>
</P>

# 1.What is  Asynchronous Programming?

- Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task.

#  2.What is Future Class ?

- In `Dart`, a Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available. 

# 3.What is Duration class & Future.delayed() constructor with Example ?

- `Duration class` :- A span of time, such as 27 days, 4 hours, 12 minutes, and 3 seconds. A Duration represents a difference from one point in time to another.

- `Future.delated` :- The Dart Delay function's Return Value is a 'Future'. After the delay, the 'Future' is completed with the value from evaluating computation(). If computation is omitted, it instead completes with the value null.

# Example

```Dart
import 'dart:async';
void main() 
async{
  print('Start');

  Future.delayed(Duration(seconds: 2), () 
  {
    print('Delayed by 2 Seconds');
  });

  print('End');
}
```

# 4.What is the Use of the async & await keyword?

# `async Keyword`:
- The `async` keyword is used to mark a function as asynchronous.
- When a function is marked as async, it means it will return a Future.

# `await Keyword`:
- The `await` keyword is used to pause the execution of an async function until a Future is complete.
- It can only be used inside functions marked as async.

# 5).What is Recursion ? With Example.

- It is similar to recursion where a method calls itself as often as necessary

# Example

```Dart
import 'dart:async';

void main()
async{
  print('Hello Flutter');
  Future(() => print('Print at Last'));

  Future.delayed(Duration(seconds: 3),() {
    print('Print After 3 Second Delay');
  },);
  print('Hello Dart');
}
```

# 6.What is Timer class with example?

- In Dart, the Timer class is used to create a one-shot or periodic timer that invokes a callback function after a specified duration.

```Dart
import 'dart:async';

void main()
async{

 print('Hello Flutter');

 Timer(Duration(seconds: 3), () { 
   print('After 3 Second');
 });

 print('Hello Dart');
}
```

# 7.What is Timer.periodic and use with Example?

- A periodic timer is particularly powerful because it allows you to schedule a callback to be executed repeatedly with a specified duration between each call.

```Dart
import 'dart:async';
void main()
{
    Timer.periodic(
        Duration(seconds: 3), 
        (timer){
            print('Hello Flutter');
        }, );
        // In Every 3 Seconds of Delay the Massage in print('') will be Execute..
}
```
# Clock App Task
<p>
<img src="https://github.com/Dipeshmaurya1/time_daily_tasks/assets/149373441/9daeef64-d8e9-4d2e-8495-68f5930560a7" width=22% height=35%>
</P>
<p>
<video src="https://github.com/Dipeshmaurya1/time_daily_tasks/assets/149373441/35872135-0bec-432b-b5bf-c27da6e1bcbf" width=22% height=35%>
</P>





