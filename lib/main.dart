import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () => _showInfoAlert(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IgnorePointer(
                ignoring:
                    true, // Will prevent any touch event to fire, even buttons also won't fire
                child: Container(
                  width: 300,
                  height: 130,
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
                  height: 140,
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
              Center(
                child: Container(
                  width: 200,
                  height: 70,
                  color: Colors.greenAccent,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 30,
                      height: 30,
                      color: Colors.orange[100],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 70,
                  color: Colors.greenAccent,
                  child: Align(
                    alignment: Alignment(-1, 1),
                    child: Container(
                      width: 30,
                      height: 30,
                      color: Colors.orange[100],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 70,
                  color: Colors.greenAccent,
                  child: Align(
                    alignment: FractionalOffset(0.5, 0.5),
                    child: Container(
                      width: 30,
                      height: 30,
                      color: Colors.orange[100],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AspectRatio(
                  // aspectRatio: 3/2, Width to height ratio, 3 parts of width and 2 parts of height.
                  aspectRatio:
                      1.5, // We can mention it in double also. 1.5 is nothing but 3/2
                  child: Container(
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    width: 300,
                    height: 200,
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Unlock now"),
                      ),
                    ),
                  ),
                ],
              ),
              // BackdropFilter(
              //   filter: ImageFilter.blur(
              //     sigmaX: 2.0,
              //     sigmaY: 3.0,
              //   ),
              //   child: Container(
              //     width: 200,
              //     height: 200,
              //     color: Colors.black.withOpacity(0.8),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _showInfoAlert(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // User must tap button, to dismiss alert
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Bingo..'),
        content: Container(
          child: Text(
              "Hello world, this is a normal alert. User must tap the Ok button to dismiss this alert."),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
