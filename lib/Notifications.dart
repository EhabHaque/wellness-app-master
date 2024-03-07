// import 'package:flutter/material.dart';

// class Notification extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text("Notification Clicked")),
//     );
//   }
// }

// Notifications.dart

import 'dart:async';
import 'package:flutter/material.dart';

class Notification extends StatefulWidget {
  @override
  _PomodoroTimerState createState() => _PomodoroTimerState();
}

class _PomodoroTimerState extends State<Notification> {
  int workDuration = 25; // in minutes
  int breakDuration = 5; // in minutes
  int pomodoroCount = 0;
  bool isWorking = true;
  bool isRunning = false;
  int timeLeftInSeconds = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(Duration(seconds: 0), () {});
    resetTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        if (timeLeftInSeconds > 0) {
          timeLeftInSeconds--;
        } else {
          // Switch between work and break sessions
          isWorking = !isWorking;
          timeLeftInSeconds = isWorking ? workDuration * 60 : breakDuration * 60;

          // Show notification when switching sessions
          showNotification(isWorking ? 'Work Session' : 'Break Session');

          // Increment pomodoro count immediately after completing a work session
          if (!isWorking) {
            pomodoroCount++;

            // Check for every 4 pomodoros for a 15 min break
            if (pomodoroCount % 4 == 0 && pomodoroCount > 0) {
              timeLeftInSeconds = 15 * 60; // 15 minutes break
            }
          }

          // Reset pomodoro count after completing 12 pomodoros
          if (pomodoroCount >= 12) {
            pomodoroCount = 0;
          }
        }
      });
    });
  }

  void resetTimer() {
    setState(() {
      isWorking = true;
      timeLeftInSeconds = workDuration * 60;
      if (timer != null) {
        timer.cancel();
      }
    });
  }

  void toggleTimer() {
    setState(() {
      isRunning = !isRunning;
      if (isRunning) {
        startTimer();
      } else {
        timer.cancel();
      }
    });
  }

  void showNotification(String message) {
    // Implement your notification logic here
    // You can use packages like flutter_local_notifications or others for notifications
  }

  void showInfoModal() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              Expanded(
                child: Text('What is the pomodoro technique?'),
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          content: Text('''The Pomodoro Technique involves working on a specific task for a set period, followed by a short break.
          It helps by enhancing focus, alleviating burnout, and promoting better time awareness.
          
          How to use the Pomodoro Technique:

          1. Choose a task: Select the task you want to work on.
          2. Set the timer: Set a timer for 25 minutes (one Pomodoro) to focus exclusively on the task.
          3. Work on the task: Dedicate yourself to the task until the timer rings.
          4. Take a short break: Enjoy a 5-minute break to relax and recharge.
          5. Repeat the process, completing four Pomodoros, and take a longer break (15-30 minutes) after the fourth Pomodoro.
           '''),
        );
      },
    );
  }

  @override
  void dispose() {
    if (timer != null) {
      timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pomodoro Timer'),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: showInfoModal,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isWorking ? 'Work Session' : 'Break Session',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              '${(timeLeftInSeconds ~/ 60).toString().padLeft(2, '0')}:${(timeLeftInSeconds % 60).toString().padLeft(2, '0')}',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: resetTimer,
                  child: Text('Reset'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: toggleTimer,
                  child: Text(isRunning ? 'Pause' : 'Start'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Pomodoros: $pomodoroCount/12',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
