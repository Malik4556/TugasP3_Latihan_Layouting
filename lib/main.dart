import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Flutter")),
        body: Container(
          color: Colors.black26,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(),
              Container(),
              IntrinsicHeight(),
              Container(height: 200, color: Colors.red),
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Text(
                  "Tugas Latihan Layouting-Flutter Pertemuan3",
                  textAlign: TextAlign.center,
                ),
              ),
              //ROW
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.yellow,
                      height: 150,
                    )),
                    Expanded(child: Container(color: Colors.blue)),
                  ],
                ),
              ),
              //COLUMN
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(height: 200, color: Colors.green,
                          )
                        ],
                      ),   
            ],
          ),
        ),
      ),
    );
  }
}
