import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'timerService.dart';
import 'utils.dart';
import 'timerCard.dart';
import 'timeOptions.dart';
import 'timeController.dart';
import 'progress.dart';

class Pomodoro extends StatelessWidget {
  //const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text("POMODORO", style: textStyle(25,Colors.white,FontWeight.w700),
        ),
        actions: [
          IconButton(icon: Icon(Icons.info, 
          color: Colors.white),
          iconSize: 40,
          onPressed: (){
            showInfoPopup(context);},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container (
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 15),
              TimerCard(),
              SizedBox(height: 40,),
              TimeOptions(),
              SizedBox(height: 30,),
              TimeController(),
              SizedBox(height: 30,),
              ProgressWidget(),
            ]
          )
        )
      )
    );
  }
}