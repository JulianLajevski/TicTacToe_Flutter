import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tictactoe_flutter/start_screen.dart';
import 'package:tictactoe_flutter/utils.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MaterialApp(
    initialRoute: '/start',

    routes: {
      '/start': (context) => StartScreen(),
    },
  ));
}

