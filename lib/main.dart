import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
              // height: double.infinity,
              child: Text(
                "Side navigation",
                style: TextStyle(decoration: TextDecoration.none),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.blueAccent,
                  margin: EdgeInsets.all(12),
                  // width: double.infinity,
                  child: Text("Header"),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    margin: EdgeInsets.all(12),
                    // width: double.infinity,
                    child: Text("Content"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
