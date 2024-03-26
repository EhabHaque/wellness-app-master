import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'timerService.dart';

class TimeController extends StatefulWidget {
  @override
_TimeControllerState createState() => _TimeControllerState();
}
class _TimeControllerState extends State<TimeController> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Colors.black26,shape: BoxShape.circle),
              child: Center(
                child: IconButton(icon: Icon(Icons.refresh, 
                        color: Colors.white),
                        iconSize: 55,
                        onPressed: () => Provider.of<TimerService>(context,listen: false).reset()
                ),
              )
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Colors.black26,shape: BoxShape.circle),
              child: Center(
                child: IconButton(
                icon: provider.timerPlaying ? Icon(Icons.pause) : Icon(Icons.play_arrow),
                color: Colors.white,
                iconSize: 55,
                onPressed: (){
                  provider.timerPlaying ? Provider.of<TimerService>(context, listen: false).pause() : Provider.of<TimerService>(context, listen: false).start();
                  },
                ),
              )
            )
          ],
        ),
      ],
    );
  }
}