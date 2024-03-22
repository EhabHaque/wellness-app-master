import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'timerService.dart';
import 'utils.dart';

class ProgressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Text(
              "${provider.cycles}/4", style: textStyle(30,Colors.grey[350],FontWeight.bold),
            ),
            //SizedBox(width: 90),
            Text("${provider.goal}", style: textStyle(30,Colors.grey[350],FontWeight.bold),
            ),
          ]
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            //SizedBox(width:2),
            Text("CYCLES", style: textStyle(25,Colors.white,FontWeight.bold),),
            Text("TOTAL", style: textStyle(25,Colors.white,FontWeight.bold),),

          ]
        )
      ]
    );
  }
}