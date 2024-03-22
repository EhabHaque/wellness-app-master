import 'dart:async';
import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  late Timer timer;

  double currentDuration = 1500;
  double selectedTime = 1500;
  double workSessionSelectedTime =
      1500; // Variable to store selected time for work session
  bool timerPlaying = false;
  int cycles = 0;
  int goal = 0;
  String currentState = "WORK";

  void start() {
    timerPlaying = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (currentDuration == 0) {
        handleNextRound();
      } else {
        currentDuration--;
        notifyListeners();
      }
    });
  }

  void pause() {
    timer.cancel();
    timerPlaying = false;
    notifyListeners();
  }

  void selectTime(double seconds) {
    selectedTime = seconds;
    if (currentState == "WORK") {
      // Update work session selected time only when in work state
      workSessionSelectedTime = seconds;
    }
    currentDuration = seconds;
    notifyListeners();
  }

  void reset() {
    timer.cancel();
    currentState = "WORK";
    currentDuration = selectedTime = 1500;
    workSessionSelectedTime = 1500; // Reset work session selected time
    cycles = goal = 0;
    timerPlaying = false;
    notifyListeners();
  }

  void handleNextRound() {
    if (currentState == "WORK" && cycles != 3) {
      currentState = "BREAK";
      currentDuration = 300;
      selectedTime = 300;
      cycles++;
      goal++;
    } else if (currentState == "BREAK") {
      currentState = "WORK";
      currentDuration =
          workSessionSelectedTime; // Use work session selected time
      selectedTime = workSessionSelectedTime; // Use work session selected time
    } else if (currentState == "WORK" && cycles == 3) {
      currentState = "LONG BREAK";
      currentDuration = 900;
      selectedTime = 900;
      cycles++;
      goal++;
    } else if (currentState == "LONG BREAK") {
      currentState = "WORK";
      currentDuration =
          workSessionSelectedTime; // Use work session selected time
      selectedTime = workSessionSelectedTime; // Use work session selected time
      cycles = 0;
    }
    notifyListeners();
  }
}
