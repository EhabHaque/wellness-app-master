import 'dart:async';

import 'package:flutter/material.dart';

class SnakeGame extends StatefulWidget {
  @override
  _SnakeGameState createState() => _SnakeGameState();
}

class _SnakeGameState extends State<SnakeGame> {
  static const int gridSize = 20;
  static const int cellSize = 20;

  List<int> snake = [45, 65, 85];
  int food = 50;
  Direction direction = Direction.right;
  bool isGameOver = false;

  @override
  void initState() {
    super.initState();
    startGame();
  }

  void startGame() {
    const Duration gameSpeed = Duration(milliseconds: 300);

    Timer.periodic(gameSpeed, (Timer timer) {
      if (!isGameOver) {
        moveSnake();
        checkCollision();
        generateFood();
        setState(() {});
      } else {
        timer.cancel();
        showGameOverDialog();
      }
    });
  }

  void moveSnake() {
    int head = snake.first;

    switch (direction) {
      case Direction.up:
        head -= gridSize;
        break;
      case Direction.down:
        head += gridSize;
        break;
      case Direction.left:
        head -= 1;
        break;
      case Direction.right:
        head += 1;
        break;
    }

    if (snake.contains(head) || head < 0 || head >= gridSize * gridSize) {
      isGameOver = true;
      return;
    }

    snake.insert(0, head);

    if (head == food) {
      generateFood();
    } else {
      snake.removeLast();
    }
  }

  void checkCollision() {
    int head = snake.first;

    if (head < 0 ||
        head >= gridSize * gridSize ||
        (direction == Direction.right && head % gridSize == 0) ||
        (direction == Direction.left && (head + 1) % gridSize == 0)) {
      isGameOver = true;
    }
  }

  void generateFood() {
    if (snake.first == food) {
      List<int> possibleLocations =
          List.generate(gridSize * gridSize, (index) => index)
              .where((pos) => !snake.contains(pos))
              .toList();

      food = possibleLocations[DateTime.now().millisecond % possibleLocations.length];
    }
  }

  void showGameOverDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Game Over'),
          content: Text('You scored ${snake.length - 3} points!'),
          actions: [
            ElevatedButton(
              child: Text('Restart'),
              onPressed: () {
                Navigator.of(context).pop();
                resetGame();
              },
            ),
          ],
        );
      },
    );
  }


  void resetGame() {
    setState(() {
      snake = [45, 65, 85];
      food = 50;
      direction = Direction.right;
      isGameOver = false;
    });

    startGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snake Game'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            color: Colors.black,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: gridSize,
              ),
              itemBuilder: (context, index) {
                if (snake.contains(index)) {
                  return Cell(color: Colors.green);
                } else if (index == food) {
                  return Cell(color: Colors.red);
                } else {
                  return Cell(color: Colors.black);
                }
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          resetGame();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}

class Cell extends StatelessWidget {
  final Color color;

  const Cell({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
      ),
    );
  }
}

enum Direction { up, down, left, right }


