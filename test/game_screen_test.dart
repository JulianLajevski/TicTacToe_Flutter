import 'dart:ffi';

import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe_flutter/game_screen.dart';
import 'package:tictactoe_flutter/logic.dart';

void main() {

  test('on 3x3 board should return true with X win', () {
    final board = List.generate(3, (index) => ['','','x'], growable: false);
    print(board);
    final result = Logic().isWinner(0, 2, board);
    expect(true, result);
  });

  test('on 4x4 board should return true with X win', () {
    final board = List.generate(4, (index) => ['','','','x'], growable: false);
    print(board);
    final result = Logic().isWinner(0, 3, board);
    expect(true, result);
  });

  test('on 5x5 board should return true with X win', () {
    final board = List.generate(5, (index) => ['','','','','x'], growable: false);
    print(board);
    final result = Logic().isWinner(0, 4, board);
    expect(true, result);
  });

  test('on 3x3 board should return true by won in diagonal', () {
    List<List<String>> board = [['','','x'],['','x',''],['x','','']];
    final result = Logic().isWinner(0, 2, board);
    expect(true, result);
  });

  test('on 4x4 board should return true by won in diagonal', () {
    List<List<String>> board = [['','','','x'],['','','x',''],['','x','',''],['x','','','']];
    String a = board[0][3];
    final result = Logic().isWinner(0, 3, board);
    expect(false, result);
  });

  test('on 5x5 board should return true by won in diagonal', () {
    List<List<String>> board = [['','','','','x'],['','','','x',''],['','','x','',''],['','x','','',''],['x','','','','']];
    final result = Logic().isWinner(0, 4, board);
    expect(false, result);
  });
}
