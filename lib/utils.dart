import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle(double size, [Color? color, FontWeight? fw]) {
  return GoogleFonts.montserrat(fontSize: size, color: color, fontWeight: fw);
}

List selectableTimes = [
  "30", // in seconds
  "600",
  "900",
  "1200",
  "1500",
  "1800",
  "2100",
  "2400",
  "2700",
  "3000",
  "3300",
  "3600"
];

Color renderColor(String currentState) {
  if (currentState == "WORK") {
    return Colors.redAccent;
  } else {
    return Colors.lightBlueAccent;
  }
}

void showInfoPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.greenAccent,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'What Is The Pomodoro Technique?',
                  style: textStyle(25, Colors.white, FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 5), // Add some space between text sections
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'The Pomodoro Technique involves working on a specific task for a set period followed by a short break. It helps by enhancing focus, alleviating burnout, and promoting better time awareness.',
                  style: textStyle(18, Colors.white, FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 5), // Add some space between text sections
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'How To Use The Pomodoro Technique?',
                  style: textStyle(25, Colors.white, FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '1. Select a task to work on.\n\n'
                  '2. Set a duration you would like for your work session.\n\n'
                  '3. One Pomodoro Round is when you have completed a work session focusing exclusively on the task.\n\n'
                  '4. Dedicate yourself to working on the task until the timer is finished.\n\n'
                  '5. Take a short break: Enjoy a 5-minute break to relax and recharge.\n\n'
                  '6. Repeat the process, upon completing four Pomodoros, you will get a longer break.',
                  style: textStyle(18, Colors.white, FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 5), // Add some space between text sections
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Close',
                  style: textStyle(15, Colors.redAccent, FontWeight.bold),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.greenAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
