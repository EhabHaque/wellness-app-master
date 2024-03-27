import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils.dart';

enum Difficulty { Easy, Medium, Hard }

class TicTacToeGame extends StatefulWidget {
  @override
  _TicTacToeGameState createState() => _TicTacToeGameState();
}

class _TicTacToeGameState extends State<TicTacToeGame> {
  List<String> board = List.filled(9, '');
  bool playerTurn = false; // Tracks whose turn it is
  Difficulty difficulty = Difficulty.Medium;
  String selectedSymbol = 'X'; // Default selection

  @override
  void initState() {
    super.initState();
    // Randomly decide who goes first
    bool playerStarts = Random().nextBool();
    playerTurn = playerStarts; // Initialize playerTurn accordingly
    if (!playerTurn) {
      // Computer starts first
      _computerTurn();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'TIC-TAC-TOE',
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh, color: Colors.white),
            iconSize: 40,
            onPressed: _resetGame,
          ),
        ],
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildGameStatus(),
                SizedBox(height: 20),
                Container(
                  color: Colors.green,
                  padding: EdgeInsets.all(16.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemCount: 9,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          _handleTap(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Text(
                              board[index],
                              style: GoogleFonts.montserrat(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                letterSpacing: 3.0,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                //SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSymbolButton('X'),
                    _buildSymbolButton('O'),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          difficulty = Difficulty.Easy;
                          _resetGame();
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: difficulty == Difficulty.Easy
                            ? BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              )
                            : BoxDecoration(
                                border:
                                    Border.all(width: 3, color: Colors.white30),
                                borderRadius: BorderRadius.circular(5),
                              ),
                        alignment: Alignment.center,
                        child: Text(
                          'EASY',
                          style: textStyle(
                            20,
                            difficulty == Difficulty.Easy
                                ? Colors.green
                                : Colors.white,
                            FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          difficulty = Difficulty.Medium;
                          _resetGame();
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: difficulty == Difficulty.Medium
                            ? BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              )
                            : BoxDecoration(
                                border:
                                    Border.all(width: 3, color: Colors.white30),
                                borderRadius: BorderRadius.circular(5),
                              ),
                        alignment: Alignment.center,
                        child: Text(
                          'MEDIUM',
                          style: textStyle(
                            20,
                            difficulty == Difficulty.Medium
                                ? Colors.green
                                : Colors.white,
                            FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          difficulty = Difficulty.Hard;
                          _resetGame();
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: difficulty == Difficulty.Hard
                            ? BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              )
                            : BoxDecoration(
                                border:
                                    Border.all(width: 3, color: Colors.white30),
                                borderRadius: BorderRadius.circular(5),
                              ),
                        alignment: Alignment.center,
                        child: Text(
                          'HARD',
                          style: textStyle(
                            20,
                            difficulty == Difficulty.Hard
                                ? Colors.green
                                : Colors.white,
                            FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleTap(int index) {
    // Check if the game is already over
    if (checkWin(selectedSymbol) ||
        checkWin(getOpponentSymbol(selectedSymbol)) ||
        checkDraw()) {
      return;
    }

    if (board[index] == '' && playerTurn) {
      setState(() {
        board[index] = selectedSymbol;
        playerTurn = false;
      });

      if (checkWin(selectedSymbol)) {
        // Player wins, no further action needed
      } else if (!checkDraw()) {
        if (!checkWin(getOpponentSymbol(selectedSymbol))) {
          _computerTurn();
        }
      } else {
        // It's a draw
      }
    }
  }

  Widget _buildGameStatus() {
    if (checkWin(selectedSymbol)) {
      return Text(
        'YOU WIN!',
        style: textStyle(25, Colors.white, FontWeight.w700),
      );
    } else if (checkWin(getOpponentSymbol(selectedSymbol))) {
      return Text(
        'COMPUTER WINS!',
        style: textStyle(25, Colors.white, FontWeight.w700),
      );
    } else if (checkDraw()) {
      return Text(
        'IT\'S A DRAW!',
        style: textStyle(25, Colors.white, FontWeight.w700),
      );
    } else if (playerTurn) {
      return Text(
        'YOUR TURN',
        style: textStyle(25, Colors.white, FontWeight.w700),
      );
    } else {
      return Text(
        'COMPUTER\'S TURN',
        style: textStyle(25, Colors.white, FontWeight.w700),
      );
    }
  }

  Widget _buildSymbolButton(String symbol) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSymbol = symbol;
          _resetGame();
        });
      },
      child: Container(
        width: 100,
        height: 50,
        decoration: selectedSymbol == symbol
            ? BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              )
            : BoxDecoration(
                border: Border.all(width: 3, color: Colors.white30),
                borderRadius: BorderRadius.circular(5),
              ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          symbol,
          style: textStyle(
            20,
            selectedSymbol == symbol ? Colors.green : Colors.white,
            FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  String getOpponentSymbol(String symbol) {
    return symbol == 'X' ? 'O' : 'X';
  }

  void _computerTurn() {
    int emptyIndex = board.indexWhere((element) => element == '');
    if (emptyIndex != -1) {
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          if (difficulty == Difficulty.Easy) {
            _placeRandomly(emptyIndex);
          } else if (difficulty == Difficulty.Medium) {
            _blockUserOrPlaceRandomly(emptyIndex);
          } else {
            int bestMove = _findBestMove();
            board[bestMove] = getOpponentSymbol(selectedSymbol);
          }
          playerTurn = true;

          if (checkWin(getOpponentSymbol(selectedSymbol))) {
            // Computer wins, update UI accordingly
          } else {
            // Check for draw
            if (checkDraw()) {
              // It's a draw
            }
          }
        });
      });
    }
  }

  void _placeRandomly(int emptyIndex) {
    List<int> emptyIndexes = [];
    for (int i = 0; i < board.length; i++) {
      if (board[i] == '') {
        emptyIndexes.add(i);
      }
    }
    int randomIndex = Random().nextInt(emptyIndexes.length);
    board[emptyIndexes[randomIndex]] = getOpponentSymbol(selectedSymbol);
  }

  void _blockUserOrPlaceRandomly(int emptyIndex) {
    List<List<int>> winConditions = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    // Check if the player is about to win and block them
    for (var condition in winConditions) {
      if (board[condition[0]] == '' &&
          board[condition[1]] == selectedSymbol &&
          board[condition[2]] == selectedSymbol) {
        board[condition[0]] = getOpponentSymbol(selectedSymbol);
        return;
      } else if (board[condition[0]] == selectedSymbol &&
          board[condition[1]] == '' &&
          board[condition[2]] == selectedSymbol) {
        board[condition[1]] = getOpponentSymbol(selectedSymbol);
        return;
      } else if (board[condition[0]] == selectedSymbol &&
          board[condition[1]] == selectedSymbol &&
          board[condition[2]] == '') {
        board[condition[2]] = getOpponentSymbol(selectedSymbol);
        return;
      }
    }

    // If the player is not about to win, place randomly
    _placeRandomly(emptyIndex);
  }

  bool checkWin(String player) {
    List<List<int>> winConditions = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var condition in winConditions) {
      if (board[condition[0]] == player &&
          board[condition[1]] == player &&
          board[condition[2]] == player) {
        return true;
      }
    }
    return false;
  }

  bool checkDraw() {
    if (!board.contains('')) {
      return true;
    }
    return false;
  }

  void _resetGame() {
    setState(() {
      board = List.filled(9, '');
      playerTurn = true;
    });
  }

  int _findBestMove() {
    int bestScore = -9999;
    int bestMove = -1;

    for (int i = 0; i < board.length; i++) {
      if (board[i] == '') {
        board[i] = getOpponentSymbol(selectedSymbol);
        int score = _minimax(board, 0, false);
        board[i] = '';

        if (score > bestScore) {
          bestScore = score;
          bestMove = i;
        }
      }
    }

    return bestMove;
  }

  int _minimax(List<String> board, int depth, bool isMaximizing) {
    String result = _checkWinner(board);
    if (result == getOpponentSymbol(selectedSymbol)) {
      return 10 - depth;
    } else if (result == selectedSymbol) {
      return depth - 10;
    } else if (result == 'draw') {
      return 0;
    }

    if (isMaximizing) {
      int bestScore = -9999;
      for (int i = 0; i < board.length; i++) {
        if (board[i] == '') {
          board[i] = getOpponentSymbol(selectedSymbol);
          int score = _minimax(board, depth + 1, false);
          board[i] = '';
          bestScore = max(score, bestScore);
        }
      }
      return bestScore;
    } else {
      int bestScore = 9999;
      for (int i = 0; i < board.length; i++) {
        if (board[i] == '') {
          board[i] = selectedSymbol;
          int score = _minimax(board, depth + 1, true);
          board[i] = '';
          bestScore = min(score, bestScore);
        }
      }
      return bestScore;
    }
  }

  String _checkWinner(List<String> board) {
    List<List<int>> winConditions = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var condition in winConditions) {
      if (board[condition[0]] != '' &&
          board[condition[0]] == board[condition[1]] &&
          board[condition[1]] == board[condition[2]]) {
        return board[condition[0]];
      }
    }

    if (!board.contains('')) {
      return 'draw';
    }

    return '';
  }
}