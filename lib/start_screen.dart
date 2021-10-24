import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe_flutter/game_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: (){
                    Navigator.push
                      (context,
                        MaterialPageRoute(builder: (context) => MyApp(3))
                    );
                  },
                  child: Text("3x3")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push
                      (context,
                        MaterialPageRoute(builder: (context) => MyApp(4))
                    );
                  },
                  child: Text("4x4")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push
                      (context,
                        MaterialPageRoute(builder: (context) => MyApp(5))
                    );
                  },
                  child: Text("5x5")
              )
            ],
          ),
        ),
      ),
    );
  }
}

