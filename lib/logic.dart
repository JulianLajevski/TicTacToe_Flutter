import 'dart:math';

class Logic {
  late int countMatrix;
  late List<List<String>> matrix;

  bool isEnd() =>
      matrix.every((values) => values.every((value) => value != Player.none));

  bool isWinner(int x, int y, List<List<String>> matrix) {
    var col = 0, row = 0, diag = 0, rdiag = 0;
    final player = matrix[x][y];
    final n = sqrt(matrix.length).toInt();

    for (int i = 0; i < n; i++) {
      if (matrix[x][i] == player) col++;
      if (matrix[i][y] == player) row++;
      if (matrix[i][i] == player) diag++;
      if (matrix[i][n - i - 1] == player) rdiag++;
    }

    return row == n || col == n || diag == n || rdiag == n;
  }
}

class Player {
  static const none = '';
  static const X = 'X';
  static const O = 'O';
}