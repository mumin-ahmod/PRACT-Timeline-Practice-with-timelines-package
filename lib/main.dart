import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: TimeLinePage(),
    );
  }
}

class TimeLinePage extends StatelessWidget {
  const TimeLinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Timeline Practice"),
        ),
        body: FixedTimeline.tileBuilder(
            builder: TimelineTileBuilder.connectedFromStyle(
                itemCount: 5,
              contentsAlign: ContentsAlign.reverse,

              contentsBuilder: (context, index)=> const Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Contents"),
                ),
              ),

              oppositeContentsBuilder: (context, index)=> Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Text("Opposite \nContent"),
              ),


              connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,

            )));
  }
}
