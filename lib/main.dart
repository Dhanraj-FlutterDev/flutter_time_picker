import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_duration_picker/flutter_duration_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Demo(),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Demo App'),
      ),
      body: Center(
        child: Text('Duration Picker',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
      ),
      floatingActionButton: Builder(
          builder: (BuildContext context) => FloatingActionButton(
              child: Icon(Icons.timer),
              focusElevation: 30.0,
              backgroundColor: Colors.green,
              onPressed: () async {
                Duration duration = await showDurationPicker(
                    context: context,
                    initialTime: Duration(minutes: 0),
                );
                Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text('Selected Duration $duration'),
                  backgroundColor: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ));
              }
          ),
      ),
    );
  }
}

















