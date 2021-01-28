import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Batch One',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widgets"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IgnorePointer(
              ignoring:
                  true, // Will prevent any touch event to fire, even buttons also won't fire
              child: Container(
                width: 300,
                height: 200,
                child: Column(
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 40,
                        color: Colors.cyan[500],
                        child: Center(
                          child: Text(
                            "Gesture Detector",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onTap: () {
                        print("Gesture detector tapped");
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: RaisedButton(
                        child: Text("Raised Button"),
                        onPressed: () {
                          print("Raised button clicked");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AbsorbPointer(
              absorbing:
                  true, // Will prevent any touch event to fire, even buttons also won't fire
              child: Container(
                width: 300,
                height: 200,
                child: Column(
                  children: [
                    GestureDetector(
                      child: Container(
                        color: Colors.cyan[500],
                        height: 40,
                        child: Center(
                          child: Text("Gesture Detector"),
                        ),
                      ),
                      onTap: () {
                        print("Gesture detector tapped");
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: RaisedButton(
                        child: Text("Raised Button"),
                        onPressed: () {
                          print("Raised button clicked");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
