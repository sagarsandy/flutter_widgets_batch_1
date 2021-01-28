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
