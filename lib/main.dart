import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Container(
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alert Dialog",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "This is a simple alert dialog",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Text("Open Dialog"),
        ),
      ),
    );
  }
}